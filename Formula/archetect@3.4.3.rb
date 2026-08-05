class ArchetectAT3_4_3 < Formula
  desc "Archetect"
  homepage "https://github.com/archetect/archetect"
  version "3.4.3"

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v3.4.3/archetect-v3.4.3-linux-x86_64.tar.gz"
      sha256 "e68b3df5033151162f77d302f8d4268bc5b069f56fe5731401f05615c191eccd"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v3.4.3/archetect-v3.4.3-linux-arm64.tar.gz"
      sha256 "fcec8b8e96b0b85efa4bf3072a47170f7d3fa750092051c41355e33364f1306f"
    end
  end

  on_macos do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v3.4.3/archetect-v3.4.3-macos-arm64.tar.gz"
      sha256 "749185b929e0505063651a33c2044eb06977657025e785dc6389bc4893a3ebaa"
    end
  end

  def install
    bin.install "archetect"
  end

  test do
    system "#{bin}/archetect --version"
  end

end
