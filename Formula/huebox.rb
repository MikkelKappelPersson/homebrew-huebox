class Huebox < Formula
  desc "Terminal theme editor with live preview"
  homepage "https://github.com/MikkelKappelPersson/huebox"
  version "0.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/MikkelKappelPersson/huebox/releases/download/v#{version}/huebox-#{version}-arm64-macos.tar.gz"
      sha256 "196bf7bda030cb3d029697d57ebf187eb53ef0902d753f7b0776e092a3dc6a88"
    end
    on_intel do
      url "https://github.com/MikkelKappelPersson/huebox/releases/download/v#{version}/huebox-#{version}-x86_64-macos.tar.gz"
      sha256 "819c2ccb9f8c5df69ef92ee934a16a9eb7c37bb723332d28120d6d920e48f407"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/MikkelKappelPersson/huebox/releases/download/v#{version}/huebox-#{version}-aarch64-linux.tar.gz"
      sha256 "73612d0bb756326ec5b6abacbf8ea3b42ab1b928cd17d5850bc859a74d29cdcb"
    end
    on_intel do
      url "https://github.com/MikkelKappelPersson/huebox/releases/download/v#{version}/huebox-#{version}-x86_64-linux.tar.gz"
      sha256 "9b6a8439f0f5d48a55d8a7d0d2c7caa4fb686af47e677325e91c9867ac9acbb4"
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
