class ArchetectAT3_1_0 < Formula
  desc "Archetect"
  homepage "https://github.com/archetect/archetect"
  version "3.1.0"

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v3.1.0/archetect-v3.1.0-linux-x86_64.tar.gz"
      sha256 "7b99bb9244bfcb77540d559a1174d94319cc66714cc6901cc57fc9eb6d5d7ab1"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v3.1.0/archetect-v3.1.0-linux-arm64.tar.gz"
      sha256 "b16ce478623cb6d834f8e8e917504e70d64360dfe57515d8091305eda5d4a403"
    end
  end

  on_macos do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v3.1.0/archetect-v3.1.0-macos-arm64.tar.gz"
      sha256 "291aaa2acda5824d50933305fe7919bb1cc5f54bd67afbe658fa0f9c63ffa2b8"
    end
  end

  def install
    bin.install "archetect"
  end

  test do
    system "#{bin}/archetect --version"
  end

end
