# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Archetect < Formula
  desc "A powerful code-centric, language agnostic content generator"
  homepage "https://github.com/archetect/archetect"
  url "https://github.com/archetect/archetect/releases/download/v2.0.0/archetect-v2.0.0-macos_aarch64.tar.gz"
  sha256 "4e854d18dd1fbcf126c813a3cbc93c088a6b0b5faedfef7e02eb0c6b7309c9d9"
  version "2.0.0"

  def install
    bin.install "archetect"
  end
end

