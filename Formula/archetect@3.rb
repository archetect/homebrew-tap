class ArchetectAT3 < Formula
  desc "Archetect"
  homepage "https://github.com/archetect/archetect"
  version "3.6.4"

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v3.6.4/archetect-v3.6.4-linux-x86_64.tar.gz"
      sha256 "8dc729dcdd0efd5bf70f95787876b760a4579d1f03f0200eb3dacb29776510ba"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v3.6.4/archetect-v3.6.4-linux-arm64.tar.gz"
      sha256 "8a7898f7aac63170609f39ecc8e1e973f152fd7dd6a7a90046e08eed3b52436b"
    end
  end

  on_macos do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v3.6.4/archetect-v3.6.4-macos-arm64.tar.gz"
      sha256 "0bc02c05bd64ea607146a3d5faf8a421a1e5ae806be6255dfdeee876a0046b56"
    end
  end

  def install
    bin.install "archetect"
  end

  test do
    system "#{bin}/archetect --version"
  end

end
