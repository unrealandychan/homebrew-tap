# typed: false
# frozen_string_literal: true

class Rekipedia < Formula
  desc "Agentic repo-to-wiki — scan any codebase into a structured knowledge base"
  homepage "https://github.com/unrealandychan/rekipedia"
  version "0.15.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.15.0/rekipedia_darwin_amd64.tar.gz"
      sha256 "9f842906dc4cb3b2fd3f6841d66cb043b18ee3875130543ffbcf0735670a7c56"
    end
    if Hardware::CPU.arm?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.15.0/rekipedia_darwin_arm64.tar.gz"
      sha256 "f5d34071c9518f35651d61f6ae059e441d6087c0cffe594ee8d841c55bfcb54f"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.15.0/rekipedia_linux_amd64.tar.gz"
      sha256 "2d319779748d57834fb7bf96f507493669f74763868f6e01119cc465c680b82b"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.15.0/rekipedia_linux_arm64.tar.gz"
      sha256 "955e6b1ecc9e42dbe80585b5cd07734fca19291d4d5672cf0ecc5c7c4e56a744"
    end
  end

  def install
    bin.install "reki"
  end

  test do
    system "\#<built-in function bin>/reki", "--version"
  end
end
