class ArchetectAT3_2_2 < Formula
  desc "Archetect"
  homepage "https://github.com/archetect/archetect"
  version "3.2.2"

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v3.2.2/archetect-v3.2.2-linux-x86_64.tar.gz"
      sha256 "79257916071ec8c922042b7575f41dc80e77e53948eb976e46a2730e39eaa85d"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v3.2.2/archetect-v3.2.2-linux-arm64.tar.gz"
      sha256 "f6eeae0c2602290ba6c95c242efeaf98ed7762c848d899ecb50e26e3e15affb2"
    end
  end

  on_macos do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v3.2.2/archetect-v3.2.2-macos-arm64.tar.gz"
      sha256 "b9400b61728cbb395f579403464253b63a65804aa83995ad3cb5f5732ffec636"
    end
  end

  def install
    bin.install "archetect"
  end

  test do
    system "#{bin}/archetect --version"
  end

end
