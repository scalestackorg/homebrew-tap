class Scalestack < Formula
  desc "Command-line client for the Scalestack platform"
  homepage "https://scalestack.ai"

  on_macos do
    on_arm do
      url "https://github.com/scalestackorg/homebrew-tap/releases/download/v0.4.0/scalestack_v0.4.0_darwin_arm64.tar.gz"
      sha256 "fdf8d2244de2332eebd7f563d3e9c6baabceb4ac0cb867bb371d69f3e66bb9aa"
    end
    on_intel do
      url "https://github.com/scalestackorg/homebrew-tap/releases/download/v0.4.0/scalestack_v0.4.0_darwin_amd64.tar.gz"
      sha256 "3be97103cb5501fcd87a6ae112a0a012d0546d924a8fe07938d15f9a22f3b303"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/scalestackorg/homebrew-tap/releases/download/v0.4.0/scalestack_v0.4.0_linux_arm64.tar.gz"
      sha256 "c354f9d97289aa012fccaa76504b2fc5d7c371d903381c14211ab49dc5fb3326"
    end
    on_intel do
      url "https://github.com/scalestackorg/homebrew-tap/releases/download/v0.4.0/scalestack_v0.4.0_linux_amd64.tar.gz"
      sha256 "84c61c733e3fe6ad216db9ffa979e3ddcc84a769683fb4ebb9d96befcfaf1006"
    end
  end

  def install
    bin.install "scalestack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/scalestack version")
  end
end
