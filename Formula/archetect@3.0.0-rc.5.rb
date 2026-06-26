class ArchetectAT3_0_0-rc_5 < Formula
  desc "Archetect"
  homepage "https://github.com/archetect/archetect"
  version "3.0.0-rc.5"

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v3.0.0-rc.5/archetect-v3.0.0-rc.5-linux-x86_64.tar.gz"
      sha256 "b60806fcdac1126327187acda30ec77d6845e283d5f54693ea0df5de74b37341"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v3.0.0-rc.5/archetect-v3.0.0-rc.5-linux-arm64.tar.gz"
      sha256 "3b474d2156de21f9633f125e9b4bba6a082595ec5a861ef644b88d3d9ada9c2a"
    end
  end

  on_macos do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v3.0.0-rc.5/archetect-v3.0.0-rc.5-macos-arm64.tar.gz"
      sha256 "3f6411710e4b707be9c8b944ad4faa009108295bd761a88e6740c2f512d9bac0"
    end
  end

  def install
    bin.install "archetect"
  end

  test do
    system "#{bin}/archetect --version"
  end

end