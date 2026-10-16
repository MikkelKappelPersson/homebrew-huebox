class Huebox < Formula
  desc "Terminal theme editor with live preview"
  homepage "https://github.com/MikkelKappelPersson/huebox"
  version "0.5.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/MikkelKappelPersson/huebox/releases/download/v#{version}/huebox-#{version}-arm64-macos.tar.gz"
      sha256 "daf864c73323c409e2c09ac8e3adbc951eeec35efedcabc7f346345d5ed5f86b"
    end
    on_intel do
      url "https://github.com/MikkelKappelPersson/huebox/releases/download/v#{version}/huebox-#{version}-x86_64-macos.tar.gz"
      sha256 "6cc39e26ded60559cbb1f450eb89c394d657aa4c9f420400012373c8b06d1bee"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/MikkelKappelPersson/huebox/releases/download/v#{version}/huebox-#{version}-aarch64-linux.tar.gz"
      sha256 "b52a690ee61c0025454c32fa1201fd8c2824e38808469a7830132f8c995d065e"
    end
    on_intel do
      url "https://github.com/MikkelKappelPersson/huebox/releases/download/v#{version}/huebox-#{version}-x86_64-linux.tar.gz"
      sha256 "8c492a08ae4ea7eb4857408c4f8b39f2823f2f12fe500a7122c60693e47e614f"
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
