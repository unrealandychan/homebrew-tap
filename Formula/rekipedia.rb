# typed: false
# frozen_string_literal: true

class Rekipedia < Formula
  desc "Agentic repo-to-wiki — scan any codebase into a structured knowledge base"
  homepage "https://github.com/unrealandychan/rekipedia"
  version "0.9.30"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.9.30/rekipedia_darwin_amd64.tar.gz"
      sha256 "2629d9e40d719cad80d79238bd044ebe3374a0c2c3393152639600a6a0de641d"
    end
    if Hardware::CPU.arm?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.9.30/rekipedia_darwin_arm64.tar.gz"
      sha256 "43aa402f312a1d07d7ca3760ef88b1f268b878b76507c96a94dfb29380d46f1a"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.9.30/rekipedia_linux_amd64.tar.gz"
      sha256 "d372ecc778e6cce7f9cc083ce16802046ffd76bb6d3d168db763e99cc3ddc746"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.9.30/rekipedia_linux_arm64.tar.gz"
      sha256 "8bb6ca01b611db045ccd04b91489693637726c095ee854547b2c58a3d6dc6bf2"
    end
  end

  def install
    bin.install "reki"
  end

  test do
    system "\#<built-in function bin>/reki", "--version"
  end
end
