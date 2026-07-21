class ArchetectAT3_2_0 < Formula
  desc "Archetect"
  homepage "https://github.com/archetect/archetect"
  version "3.2.0"

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v3.2.0/archetect-v3.2.0-linux-x86_64.tar.gz"
      sha256 "fbb65bd0457ac9e2c1942b7ba90f46b1311a35008afd2b115378a0b332cf3687"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v3.2.0/archetect-v3.2.0-linux-arm64.tar.gz"
      sha256 "41b3535bfd1f80aec210e8ad37d240f4480750f9157f812969c5f6f253d38ecf"
    end
  end

  on_macos do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v3.2.0/archetect-v3.2.0-macos-arm64.tar.gz"
      sha256 "17cf86b47b57ab5d7c2657ec83a5260582d3acc9445fc9f68e92d83e8384d6df"
    end
  end

  def install
    bin.install "archetect"
  end

  test do
    system "#{bin}/archetect --version"
  end

end
