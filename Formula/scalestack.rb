class Scalestack < Formula
  desc "Command-line client for the Scalestack platform"
  homepage "https://scalestack.ai"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/scalestackorg/homebrew-tap/releases/download/v0.1.0/scalestack_v0.1.0_darwin_arm64.tar.gz"
      sha256 "b5e68218a497d7214d3a89ae5e4fd10e373cdf38919b4102a7bca8ac4064c0d0"
    end
    on_intel do
      url "https://github.com/scalestackorg/homebrew-tap/releases/download/v0.1.0/scalestack_v0.1.0_darwin_amd64.tar.gz"
      sha256 "97b00d2fccc26fb3f4f05e35233a48e8de4d503850772df2295a9c82fa0e87da"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/scalestackorg/homebrew-tap/releases/download/v0.1.0/scalestack_v0.1.0_linux_arm64.tar.gz"
      sha256 "f75039b57963facae986b211741e6f7bc33071deae65c680f02c5b437e5788b4"
    end
    on_intel do
      url "https://github.com/scalestackorg/homebrew-tap/releases/download/v0.1.0/scalestack_v0.1.0_linux_amd64.tar.gz"
      sha256 "eaa6263b6304d1ee1b529c5887105968f751f3c6a7409a9688afd39760af1613"
    end
  end

  def install
    bin.install "scalestack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/scalestack version")
  end
end
