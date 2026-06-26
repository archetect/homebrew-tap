class ArchetectAT3_0_0-rc_6 < Formula
  desc "Archetect"
  homepage "https://github.com/archetect/archetect"
  version "3.0.0-rc.6"

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v3.0.0-rc.6/archetect-v3.0.0-rc.6-linux-x86_64.tar.gz"
      sha256 "48d36245a9e3c2b7eedd40805b40cc48afe5aae4ae5c500b06626aa760995616"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v3.0.0-rc.6/archetect-v3.0.0-rc.6-linux-arm64.tar.gz"
      sha256 "bc197c7cb232c365dea5a405f96ff5e179a82f5b8511eeb594f65679d8304d4a"
    end
  end

  on_macos do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v3.0.0-rc.6/archetect-v3.0.0-rc.6-macos-arm64.tar.gz"
      sha256 "4a8cc25763041dcdf1fedb0da75fd627a8841a9b4552b349e8f60153cd1dbde1"
    end
  end

  def install
    bin.install "archetect"
  end

  test do
    system "#{bin}/archetect --version"
  end

end