class ArchetectAT2_1_2 < Formula
  desc "Archetect"
  homepage "https://github.com/archetect/archetect"
  version "2.1.2"

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v2.1.2/archetect-v2.1.2-linux-x86_64.tar.gz"
      sha256 "9fff0ac6697e51e8a9a19941270427af9f10aea796004ffaf0f77ab7c477fd4c"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v2.1.2/archetect-v2.1.2-linux-arm64.tar.gz"
      sha256 "46cf73e50c40b5bd60325e78c7530129f467c49a1f4f079512b48553643d64ef"
    end
  end

  on_macos do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v2.1.2/archetect-v2.1.2-macos-arm64.tar.gz"
      sha256 "7fded4a7b4c44c63ac3571d3faa97791d5c17c4a0e1692f6addec5b13831cc54"
    end
  end

  def install
    bin.install "archetect"
  end

  test do
    system "#{bin}/archetect --version"
  end

end