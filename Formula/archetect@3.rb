class ArchetectAT3 < Formula
  desc "Archetect"
  homepage "https://github.com/archetect/archetect"
  version "3.6.0"

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v3.6.0/archetect-v3.6.0-linux-x86_64.tar.gz"
      sha256 "0b9b56aeaae70a0fc1a74d8d73bb5a69f40f9d47217fc4fd0a30f631b6fe03e6"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v3.6.0/archetect-v3.6.0-linux-arm64.tar.gz"
      sha256 "4b746711a4fe05ad3add5e9245ef96881432df667fcb7ca8bdf94fdbed791740"
    end
  end

  on_macos do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v3.6.0/archetect-v3.6.0-macos-arm64.tar.gz"
      sha256 "f04840fa80b02cbcb1a40c0a681c8d30199eb6f72816c7e28f2040b3b5612ec5"
    end
  end

  def install
    bin.install "archetect"
  end

  test do
    system "#{bin}/archetect --version"
  end

end
