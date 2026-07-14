class ArchetectAT3 < Formula
  desc "Archetect"
  homepage "https://github.com/archetect/archetect"
  version "3.1.1"

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v3.1.1/archetect-v3.1.1-linux-x86_64.tar.gz"
      sha256 "2fd8eb3a7d3c4f9c93c07984b0faa9386bcc84e0b4181e9e8a5f21c2a1f20f6a"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v3.1.1/archetect-v3.1.1-linux-arm64.tar.gz"
      sha256 "3f4ea160d7eb62cf7bf782fb69d5e1bc4264adbfccc656739c1eef5d2d4960ac"
    end
  end

  on_macos do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v3.1.1/archetect-v3.1.1-macos-arm64.tar.gz"
      sha256 "f65a69f2bc8942f4383e13a32ecea7f2407f35c64466c3858dd6e0797bf4c825"
    end
  end

  def install
    bin.install "archetect"
  end

  test do
    system "#{bin}/archetect --version"
  end

end
