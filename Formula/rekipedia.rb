# typed: false
# frozen_string_literal: true

class Rekipedia < Formula
  desc "Agentic repo-to-wiki — scan any codebase into a structured knowledge base"
  homepage "https://github.com/unrealandychan/rekipedia"
  version "0.17.2"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.17.2/rekipedia_darwin_amd64.tar.gz"
      sha256 "536bf9268aa231e29196e76a65bb302684bde4fd44d5343988d43757d6843ef0"
    end
    if Hardware::CPU.arm?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.17.2/rekipedia_darwin_arm64.tar.gz"
      sha256 "c6d55eb98bfb83d4a992a67dea083c3dc9616fbbd6f847b38554e8ecdc0d374a"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.17.2/rekipedia_linux_amd64.tar.gz"
      sha256 "8c52e82c426630c9a737007e73b731a947ed74b364d8c7a7a1410c7ae1a1ff27"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.17.2/rekipedia_linux_arm64.tar.gz"
      sha256 "ce508013eed5bad9c4d6f5d6a2ec732a9bf311ed451b3e36de7d2c5d444b0238"
    end
  end

  def install
    bin.install "reki"
  end

  test do
    system "\#<built-in function bin>/reki", "--version"
  end
end
