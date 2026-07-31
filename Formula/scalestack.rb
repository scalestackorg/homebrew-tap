class Scalestack < Formula
  desc "Command-line client for the Scalestack platform"
  homepage "https://scalestack.ai"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/scalestackorg/homebrew-tap/releases/download/v0.2.0/scalestack_v0.2.0_darwin_arm64.tar.gz"
      sha256 "3451b7554b0b5664f516360f2b1da79548acfbfe94b61838b6e05867de0e2194"
    end
    on_intel do
      url "https://github.com/scalestackorg/homebrew-tap/releases/download/v0.2.0/scalestack_v0.2.0_darwin_amd64.tar.gz"
      sha256 "041a07ce944197975ae0b8ac5060d75422ecf9743ab3ab2e429a2c2bbd4de9d4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/scalestackorg/homebrew-tap/releases/download/v0.2.0/scalestack_v0.2.0_linux_arm64.tar.gz"
      sha256 "b955a2eb912004ca77224c1a8bd95d92ce99910029bd2e9a46266cd4be4421c5"
    end
    on_intel do
      url "https://github.com/scalestackorg/homebrew-tap/releases/download/v0.2.0/scalestack_v0.2.0_linux_amd64.tar.gz"
      sha256 "8c99e78c5f5577039acd07634467a9c411d1e09413997f2a4145a099381377b1"
    end
  end

  def install
    bin.install "scalestack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/scalestack version")
  end
end
