# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Archetect < Formula
  desc "A powerful code-centric, language agnostic content generator"
  homepage "https://github.com/archetect/archetect"
  version "2.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/archetect/archetect/releases/download/v#{version}/archetect-v#{version}-macos_aarch64.tar.gz"
      sha256 "4e854d18dd1fbcf126c813a3cbc93c088a6b0b5faedfef7e02eb0c6b7309c9d9"

      def install
        bin.install "archetect"
      end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/archetect/archetect/releases/download/v#{version}/archetect-v#{version}-linux_x64.tar.gz"
      sha256 "d5f3495dde91e78ecb2eca1920594fd9460c58a413f68b13e704ec0d4a3ac0b6"

      def install
        bin.install "archetect"
      end
  end


end

