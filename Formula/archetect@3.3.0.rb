class ArchetectAT3_3_0 < Formula
  desc "Archetect"
  homepage "https://github.com/archetect/archetect"
  version "3.3.0"

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v3.3.0/archetect-v3.3.0-linux-x86_64.tar.gz"
      sha256 "4e68c95c58df12bd23d0b6f49bdad02da8956bcafb54ed3a6f7d0916624dd77a"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v3.3.0/archetect-v3.3.0-linux-arm64.tar.gz"
      sha256 "f4837f579617817bbc2391129eb3446268cc6b2df1af6ef880f3b4c4aad9cc3c"
    end
  end

  on_macos do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v3.3.0/archetect-v3.3.0-macos-arm64.tar.gz"
      sha256 "55ebf938c8b7103b8d2559227b9a32d1b43de1ff83ea27a563641a982dfcd4c7"
    end
  end

  def install
    bin.install "archetect"
  end

  test do
    system "#{bin}/archetect --version"
  end

end
