class Scalestack < Formula
  desc "Command-line client for the Scalestack platform"
  homepage "https://scalestack.ai"

  on_macos do
    on_arm do
      url "https://github.com/scalestackorg/homebrew-tap/releases/download/v0.4.1/scalestack_v0.4.1_darwin_arm64.tar.gz"
      sha256 "2712743e49f821452e48de1c9c10d7b4d94bfb33ae6b1ea01acbca2834765fa6"
    end
    on_intel do
      url "https://github.com/scalestackorg/homebrew-tap/releases/download/v0.4.1/scalestack_v0.4.1_darwin_amd64.tar.gz"
      sha256 "3d461dce60e167e7d02d177f027906ca287eeb6f738624efb0ffcf2ab273aad0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/scalestackorg/homebrew-tap/releases/download/v0.4.1/scalestack_v0.4.1_linux_arm64.tar.gz"
      sha256 "c97827e6712bdb3af9cf655a91ebdddc2e99fd4075b27830e34b9998fb22e691"
    end
    on_intel do
      url "https://github.com/scalestackorg/homebrew-tap/releases/download/v0.4.1/scalestack_v0.4.1_linux_amd64.tar.gz"
      sha256 "173ee030f8628eb6b6659b12055d1f068a3317d80a086d255e0060600ca0b009"
    end
  end

  def install
    bin.install "scalestack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/scalestack version")
  end
end
