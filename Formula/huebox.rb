class Huebox < Formula
  desc "Terminal theme editor with live preview"
  homepage "https://github.com/MikkelKappelPersson/huebox"
  version "0.5.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/MikkelKappelPersson/huebox/releases/download/v#{version}/huebox-#{version}-arm64-macos.tar.gz"
      sha256 "c267a6a88558ebac88ce22b6c868b5a555bd4ce68ab105f741c730db47a12939"
    end
    on_intel do
      url "https://github.com/MikkelKappelPersson/huebox/releases/download/v#{version}/huebox-#{version}-x86_64-macos.tar.gz"
      sha256 "8cee555e455b8db2b574ca206bb91693458eb1603ce22bbb3c6ef8fddb7f7e6f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/MikkelKappelPersson/huebox/releases/download/v#{version}/huebox-#{version}-aarch64-linux.tar.gz"
      sha256 "3401217e94ba642fb3f925cc874d45b16a5991fed6f4d3ff0eb288ebeb3fe597"
    end
    on_intel do
      url "https://github.com/MikkelKappelPersson/huebox/releases/download/v#{version}/huebox-#{version}-x86_64-linux.tar.gz"
      sha256 "086e4e0b5249f63db38566f8ce76f619a14da9b4136f993ce86cec8f62834a62"
    end
  end

  def install
    bin.install "huebox"
  end

  livecheck do
    url "https://github.com/MikkelKappelPersson/huebox"
    strategy :github_latest
  end

  test do
    assert_match "huebox #{version}", shell_output("#{bin}/huebox --version")
  end
end
