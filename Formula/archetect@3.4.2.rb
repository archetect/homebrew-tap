class ArchetectAT3_4_2 < Formula
  desc "Archetect"
  homepage "https://github.com/archetect/archetect"
  version "3.4.2"

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v3.4.2/archetect-v3.4.2-linux-x86_64.tar.gz"
      sha256 "c0edee7255e5438c1c55f17ecaab346bf6ed184debe60c0310418495957b7ea8"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v3.4.2/archetect-v3.4.2-linux-arm64.tar.gz"
      sha256 "4335d6a6bf56d8d0c8239233da8bd23afdc845a79c6be6f9682e533e61b7541a"
    end
  end

  on_macos do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v3.4.2/archetect-v3.4.2-macos-arm64.tar.gz"
      sha256 "53f6df324cb296964c9e7f85ace25c05269bb180885036a662776fa0bf39dd5a"
    end
  end

  def install
    bin.install "archetect"
  end

  test do
    system "#{bin}/archetect --version"
  end

end
