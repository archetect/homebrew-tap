class ArchetectAT3 < Formula
  desc "Archetect"
  homepage "https://github.com/archetect/archetect"
  version "3.6.3"

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v3.6.3/archetect-v3.6.3-linux-x86_64.tar.gz"
      sha256 "3b5784bd04567b2f639f4c66d4a091d4e7e12b1d29938869448f6a1b8efc4e06"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v3.6.3/archetect-v3.6.3-linux-arm64.tar.gz"
      sha256 "337dee51367a3fe554a4c99c117dd9e0e4a46d14b3f60a946f8d80211651035a"
    end
  end

  on_macos do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v3.6.3/archetect-v3.6.3-macos-arm64.tar.gz"
      sha256 "20129e69605d3aa3b13961c5ec534444d0923ae36b028bd69bf936e1683c8c91"
    end
  end

  def install
    bin.install "archetect"
  end

  test do
    system "#{bin}/archetect --version"
  end

end
