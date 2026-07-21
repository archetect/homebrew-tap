class ArchetectAT3_1_2 < Formula
  desc "Archetect"
  homepage "https://github.com/archetect/archetect"
  version "3.1.2"

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v3.1.2/archetect-v3.1.2-linux-x86_64.tar.gz"
      sha256 "e989accaea5e616cea1b2a932775f20afa690a9421c3a5f41dee119f97eb7776"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v3.1.2/archetect-v3.1.2-linux-arm64.tar.gz"
      sha256 "c1a131ab9132592c42bccccad17b0f75cb861904ca4590ca55e0a5821c52893d"
    end
  end

  on_macos do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v3.1.2/archetect-v3.1.2-macos-arm64.tar.gz"
      sha256 "6c093f1d029cbb68b20935c5dece8276187cf2b3ecf93934682667c409f00280"
    end
  end

  def install
    bin.install "archetect"
  end

  test do
    system "#{bin}/archetect --version"
  end

end
