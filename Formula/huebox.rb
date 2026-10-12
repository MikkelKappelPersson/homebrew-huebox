class Huebox < Formula
  desc "Terminal theme editor with live preview"
  homepage "https://github.com/MikkelKappelPersson/huebox"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/MikkelKappelPersson/huebox/releases/download/v#{version}/huebox-#{version}-arm64-macos.tar.gz"
      sha256 "dab5b1b4facc3e4716db1b530d1d46ff64cd5aa4d56cc468c8815cebeafb1651"
    end
    on_intel do
      url "https://github.com/MikkelKappelPersson/huebox/releases/download/v#{version}/huebox-#{version}-x86_64-macos.tar.gz"
      sha256 "ff97565c42468ad9ccd930a9ba242ff3240cd2158490b8b65c042746164ff9a1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/MikkelKappelPersson/huebox/releases/download/v#{version}/huebox-#{version}-aarch64-linux.tar.gz"
      sha256 "125e67fda1b3f7d598756ed9930d781d30034031e226b36134f265dba842654b"
    end
    on_intel do
      url "https://github.com/MikkelKappelPersson/huebox/releases/download/v#{version}/huebox-#{version}-x86_64-linux.tar.gz"
      sha256 "29a1a0b20b80b1723b7ee71f446afe8cd591060e908ba9fdd80b1593408b33ea"
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
