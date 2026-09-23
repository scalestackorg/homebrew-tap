class Scalestack < Formula
  desc "Command-line client for the Scalestack platform"
  homepage "https://scalestack.ai"

  on_macos do
    on_arm do
      url "https://github.com/scalestackorg/homebrew-tap/releases/download/v0.3.0/scalestack_v0.3.0_darwin_arm64.tar.gz"
      sha256 "02bbf7b7d564a22b03efe9ec47b53f8a82dba1f105a872fa0117845ac586a479"
    end
    on_intel do
      url "https://github.com/scalestackorg/homebrew-tap/releases/download/v0.3.0/scalestack_v0.3.0_darwin_amd64.tar.gz"
      sha256 "887870e21fdae2c9e14996a13cea1f18ca1eb7ccd57d41e4f7bbf4a14ff6e820"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/scalestackorg/homebrew-tap/releases/download/v0.3.0/scalestack_v0.3.0_linux_arm64.tar.gz"
      sha256 "9bc090c4d350613b88386463f9b6046704c21e20fb903087911be5680ac4c2d8"
    end
    on_intel do
      url "https://github.com/scalestackorg/homebrew-tap/releases/download/v0.3.0/scalestack_v0.3.0_linux_amd64.tar.gz"
      sha256 "b5ee55a7dd1e876727cd74c7df394cef2e9213c850d35bbe062231bdd90234f3"
    end
  end

  def install
    bin.install "scalestack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/scalestack version")
  end
end
