class Archetect < Formula
  desc "Archetect"
  homepage "https://github.com/archetect/archetect"
  version "2.0.3"

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v2.0.3/archetect-v2.0.3-linux-x86_64.tar.gz"
      sha256 "ee7e3892cf68c067d2393ecf25ed2ff5788785587dd2420104798a5159061a3f"
    end
  end

  on_macos do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v2.0.3/archetect-v2.0.3-macos-x86_64.tar.gz"
      sha256 "3dedcb762794706cd1607be3a52eedd13bca6fbdc18f75b1ba1f3c90980dfc0e"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v2.0.3/archetect-v2.0.3-macos-arm64.tar.gz"
      sha256 "3dedcb762794706cd1607be3a52eedd13bca6fbdc18f75b1ba1f3c90980dfc0e"
    end
  end

  def install
    bin.install "archetect"
  end

  test do
    system "#{bin}/archetect --version"
  end

end