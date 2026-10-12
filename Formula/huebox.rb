class Huebox < Formula
  desc "Terminal theme editor with live preview"
  homepage "https://github.com/MikkelKappelPersson/huebox"
  url "https://github.com/MikkelKappelPersson/huebox/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "REPLACE_WITH_FIRST_RUN_SUM"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "rust"
  end

  livecheck do
    url "https://github.com/MikkelKappelPersson/huebox"
    strategy :github_latest
  end

  test do
    assert_match "huebox #{version}", shell_output("#{bin}/huebox --version")
  end
end
