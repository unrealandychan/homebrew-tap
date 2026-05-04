# typed: false
# frozen_string_literal: true

class Rekipedia < Formula
  desc "Agentic repo-to-wiki — scan any codebase into a structured knowledge base"
  homepage "https://github.com/unrealandychan/rekipedia"
  version "0.9.25"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.9.25/rekipedia_darwin_amd64.tar.gz"
      sha256 "1dcc5f50f355b68f32db805a9414167e2a3085b56e0df44565fbf070c30ae6b4"
    end
    if Hardware::CPU.arm?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.9.25/rekipedia_darwin_arm64.tar.gz"
      sha256 "d5f1a99b8377eaacac83c4d69ebaf5b9b80270d3632a4541dfba03fb5b07a804"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.9.25/rekipedia_linux_amd64.tar.gz"
      sha256 "71958b67abf90288135e40d389e1a783d84f2cafac0e06cc11079111b49e3380"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.9.25/rekipedia_linux_arm64.tar.gz"
      sha256 "3c7920234e7112fe7d84b9eba1c66605b9d5bcff3b13d04b7f55a923e8fd8a40"
    end
  end

  def install
    bin.install "reki"
  end

  test do
    system "\#<built-in function bin>/reki", "--version"
  end
end
