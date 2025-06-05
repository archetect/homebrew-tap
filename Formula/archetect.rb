class Archetect < Formula
  desc "Archetect"
  homepage "https://github.com/archetect/archetect"
  version "2.0.5"

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v2.0.5/archetect-v2.0.5-linux-x86_64.tar.gz"
      sha256 "f88f7591c93e44e9eff53330ff50a972cad6a381a581553b656a3bc879adf6a2"
    end
  end

  on_macos do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v2.0.5/archetect-v2.0.5-macos-x86_64.tar.gz"
      sha256 "10ab9c6c0ba216f25b765ae4908f035772c8bb938cfbddea7bda92fd787b7c9e"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v2.0.5/archetect-v2.0.5-macos-arm64.tar.gz"
      sha256 "c433a652c607c38c8e57ee1edc029634be80e514e1cde0c53739ffa70ec76966"
    end
  end

  def install
    bin.install "archetect"
  end

  test do
    system "#{bin}/archetect --version"
  end

end