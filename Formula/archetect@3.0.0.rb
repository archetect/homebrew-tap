class ArchetectAT3_0_0 < Formula
  desc "Archetect"
  homepage "https://github.com/archetect/archetect"
  version "3.0.0"

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v3.0.0/archetect-v3.0.0-linux-x86_64.tar.gz"
      sha256 "846413d8eb20ab8b655a39a880a70088b4063ca682b1c3de91e62ca73bf1ede2"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v3.0.0/archetect-v3.0.0-linux-arm64.tar.gz"
      sha256 "822aaeaf6ed58f1e27261112f0c80b3a42ab31f4602ddafe6c82f21b4fec5bad"
    end
  end

  on_macos do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v3.0.0/archetect-v3.0.0-macos-arm64.tar.gz"
      sha256 "06acdbba23f5be0974d02e628651e669f6bdae0561876424320a8e4bdf407606"
    end
  end

  def install
    bin.install "archetect"
  end

  test do
    system "#{bin}/archetect --version"
  end

end