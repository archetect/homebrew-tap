class ArchetectAT3_6_1 < Formula
  desc "Archetect"
  homepage "https://github.com/archetect/archetect"
  version "3.6.1"

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v3.6.1/archetect-v3.6.1-linux-x86_64.tar.gz"
      sha256 "fdaf8cf524c8f4e20453607b5e5ea780966b7d144145896dc383067266349cfb"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v3.6.1/archetect-v3.6.1-linux-arm64.tar.gz"
      sha256 "ba68d8ea436fd883f121cd276a818061dbcd244f65e3d431cdce374426d7076b"
    end
  end

  on_macos do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v3.6.1/archetect-v3.6.1-macos-arm64.tar.gz"
      sha256 "2f753d61aec7ee995daaca4f432c81b169afc1bcf5297eb2fd89b1e98da82d4b"
    end
  end

  def install
    bin.install "archetect"
  end

  test do
    system "#{bin}/archetect --version"
  end

end
