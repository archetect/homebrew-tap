class Archetect < Formula
  desc "Archetect"
  homepage "https://github.com/archetect/archetect"
  version "3.6.2"

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v3.6.2/archetect-v3.6.2-linux-x86_64.tar.gz"
      sha256 "879c784d51fe66ec880f7a1e15eb1b276e36b9ca088b1b2a0f21c8c43972ba16"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v3.6.2/archetect-v3.6.2-linux-arm64.tar.gz"
      sha256 "2e667524743f86ced30c16fc14bc47dfd7b021398b938985a810385f70032efd"
    end
  end

  on_macos do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v3.6.2/archetect-v3.6.2-macos-arm64.tar.gz"
      sha256 "aab1549bacd1b93356672543a02a8f7a8c60ae181a17fafb5f979ac8cfd5ca35"
    end
  end

  def install
    bin.install "archetect"
  end

  test do
    system "#{bin}/archetect --version"
  end

end
