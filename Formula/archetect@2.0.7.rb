class ArchetectAT2_0_7 < Formula
  desc "Archetect"
  homepage "https://github.com/archetect/archetect"
  version "2.0.7"

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v2.0.7/archetect-v2.0.7-linux-x86_64.tar.gz"
      sha256 "9535b83b8a0816dac9e7ab922404970f4d9cd1410c5f5d98dd21d05c0f6620d1"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v2.0.7/archetect-v2.0.7-linux-arm64.tar.gz"
      sha256 "f4954e7231bb638705248a4412d7673b953d8cc2401383db0c54c4b16f807816"
    end
  end

  on_macos do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v2.0.7/archetect-v2.0.7-macos-x86_64.tar.gz"
      sha256 "ef6386ed0d6a1649a2160067c44de14efeb3c11a2611ba79fb740819220e6140"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v2.0.7/archetect-v2.0.7-macos-arm64.tar.gz"
      sha256 "f78767cf6142c2207202d1df04e26872024a56c2a3945598355e9df6d8d79d0e"
    end
  end

  def install
    bin.install "archetect"
  end

  test do
    system "#{bin}/archetect --version"
  end

end