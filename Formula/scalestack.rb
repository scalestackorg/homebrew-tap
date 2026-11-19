class Scalestack < Formula
  desc "Command-line client for the Scalestack platform"
  homepage "https://scalestack.ai"

  on_macos do
    on_arm do
      url "https://github.com/scalestackorg/homebrew-tap/releases/download/v0.4.0/scalestack_v0.4.0_darwin_arm64.tar.gz"
      sha256 "9488c9c37e68f14ef0104cc8d1a73044202e09a77d4a984358e6ece46d0408fc"
    end
    on_intel do
      url "https://github.com/scalestackorg/homebrew-tap/releases/download/v0.4.0/scalestack_v0.4.0_darwin_amd64.tar.gz"
      sha256 "62917fcdd2844dc67cb9f1411935701f02c355c33ae6c8168287e9a6cb243122"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/scalestackorg/homebrew-tap/releases/download/v0.4.0/scalestack_v0.4.0_linux_arm64.tar.gz"
      sha256 "b18167a8fa852081ce49a2d59280d6b70c0540924c80d9649698dfb97d1fdcec"
    end
    on_intel do
      url "https://github.com/scalestackorg/homebrew-tap/releases/download/v0.4.0/scalestack_v0.4.0_linux_amd64.tar.gz"
      sha256 "424a8f6bc4a11ac4acedc163c386f5635106b658ed7153134fd773c6190f11c2"
    end
  end

  def install
    bin.install "scalestack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/scalestack version")
  end
end
