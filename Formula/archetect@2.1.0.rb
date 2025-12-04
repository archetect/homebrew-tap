class ArchetectAT2_1_0 < Formula
  desc "Archetect"
  homepage "https://github.com/archetect/archetect"
  version "2.1.0"

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v2.1.0/archetect-v2.1.0-linux-x86_64.tar.gz"
      sha256 "b4687a583cce458b1df7d48970dc5aca6304196ee8d77efd6755a749f047f428"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v2.1.0/archetect-v2.1.0-linux-arm64.tar.gz"
      sha256 "43c510032d8f4095603193f2d88fda624e09b5b712b11e4b0aa8b5e64872e796"
    end
  end

  on_macos do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v2.1.0/archetect-v2.1.0-macos-x86_64.tar.gz"
      sha256 "8d4ebdd7f29e4ae74b656538416752e617aab06dbcbbb6b9f691df6cf3533cfa"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v2.1.0/archetect-v2.1.0-macos-arm64.tar.gz"
      sha256 "37b363dc438970f4aa36bc871ed37db90e46175fa75576965cf0aa343aed89ca"
    end
  end

  def install
    bin.install "archetect"
  end

  test do
    system "#{bin}/archetect --version"
  end

end