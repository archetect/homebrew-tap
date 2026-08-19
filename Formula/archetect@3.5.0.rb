class ArchetectAT3_5_0 < Formula
  desc "Archetect"
  homepage "https://github.com/archetect/archetect"
  version "3.5.0"

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v3.5.0/archetect-v3.5.0-linux-x86_64.tar.gz"
      sha256 "2032a83e8a1aeab863dcbd49c2780305fef43d73c4902e9453f2e1f71690978d"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v3.5.0/archetect-v3.5.0-linux-arm64.tar.gz"
      sha256 "f095027e590703d43d3925d5fce6558f5deb9ec3a59dba12ca3a1b54abc3c924"
    end
  end

  on_macos do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v3.5.0/archetect-v3.5.0-macos-arm64.tar.gz"
      sha256 "cb8bcc9dfab92a49c4fd0679011a2206375d3304b9463dd49190fe18449c6ef8"
    end
  end

  def install
    bin.install "archetect"
  end

  test do
    system "#{bin}/archetect --version"
  end

end
