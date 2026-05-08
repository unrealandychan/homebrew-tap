# typed: false
# frozen_string_literal: true

class Rekipedia < Formula
  desc "Agentic repo-to-wiki — scan any codebase into a structured knowledge base"
  homepage "https://github.com/unrealandychan/rekipedia"
  version "0.11.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.11.1/rekipedia_darwin_amd64.tar.gz"
      sha256 "fffeaee60a725e15218eabc90375d7c64c45cc93fbbc32e7f7e27a5e2d9fb923"
    end
    if Hardware::CPU.arm?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.11.1/rekipedia_darwin_arm64.tar.gz"
      sha256 "aec66f4001d3d50567cd34db1dad49bd9f4c39b0b30f4592d5685e7b590a2ca0"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.11.1/rekipedia_linux_amd64.tar.gz"
      sha256 "385e0e3bd8e2ab8a4217a4c889764ef26e8e74316be3346ab5ebb402dc84b351"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.11.1/rekipedia_linux_arm64.tar.gz"
      sha256 "6a4ef3be61a1aa2d8d27e9f9cf1808880b698cbddecfe5e93d1155e0cb7b25ec"
    end
  end

  def install
    bin.install "reki"
  end

  test do
    system "\#<built-in function bin>/reki", "--version"
  end
end
