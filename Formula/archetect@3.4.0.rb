class ArchetectAT3_4_0 < Formula
  desc "Archetect"
  homepage "https://github.com/archetect/archetect"
  version "3.4.0"

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v3.4.0/archetect-v3.4.0-linux-x86_64.tar.gz"
      sha256 "21092bcd0308060a79aeabaaa11eef040f83bb9283219961b30a7d54bda9bba4"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v3.4.0/archetect-v3.4.0-linux-arm64.tar.gz"
      sha256 "8a1e040fa32f4143975e51d53b3384a3f41f032d0a6e70e3fd05110dd05e644f"
    end
  end

  on_macos do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v3.4.0/archetect-v3.4.0-macos-arm64.tar.gz"
      sha256 "b600fc5c124a6f1b74c0e912a31c358ccfe6af38d6d3752fffaa412e3ff80a57"
    end
  end

  def install
    bin.install "archetect"
  end

  test do
    system "#{bin}/archetect --version"
  end

end
