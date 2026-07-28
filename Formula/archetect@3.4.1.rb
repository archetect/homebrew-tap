class ArchetectAT3_4_1 < Formula
  desc "Archetect"
  homepage "https://github.com/archetect/archetect"
  version "3.4.1"

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v3.4.1/archetect-v3.4.1-linux-x86_64.tar.gz"
      sha256 "c43a4e288837c330e6a63dc5d171b8158d0e714698bf9e3ab66957e7d831fe81"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v3.4.1/archetect-v3.4.1-linux-arm64.tar.gz"
      sha256 "c7221c32cc4a5d815613599c149e9a5db9298635b12e9952a79a1af4214a5830"
    end
  end

  on_macos do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v3.4.1/archetect-v3.4.1-macos-arm64.tar.gz"
      sha256 "67ae85430908250540b95c112e19bae26d80ba4f295dbb7b4988f29c7f2d0899"
    end
  end

  def install
    bin.install "archetect"
  end

  test do
    system "#{bin}/archetect --version"
  end

end
