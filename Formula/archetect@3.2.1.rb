class ArchetectAT3_2_1 < Formula
  desc "Archetect"
  homepage "https://github.com/archetect/archetect"
  version "3.2.1"

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v3.2.1/archetect-v3.2.1-linux-x86_64.tar.gz"
      sha256 "3eb61bc67c0c62add81d1de55d1f0baedbfeb8df319cc595c811a8e532668b91"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v3.2.1/archetect-v3.2.1-linux-arm64.tar.gz"
      sha256 "95df3ab4e8fecafce55dedfe891fdba57f9963b6e4d9f85b27e6bca52f6e63e6"
    end
  end

  on_macos do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v3.2.1/archetect-v3.2.1-macos-arm64.tar.gz"
      sha256 "29d885d814fdeb12eb2686527f223b8c1ac0b4a649b2286982bb3c6f453bf95d"
    end
  end

  def install
    bin.install "archetect"
  end

  test do
    system "#{bin}/archetect --version"
  end

end
