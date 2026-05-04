# typed: false
# frozen_string_literal: true

class Rekipedia < Formula
  desc "Agentic repo-to-wiki — scan any codebase into a structured knowledge base"
  homepage "https://github.com/unrealandychan/rekipedia"
  version "0.9.32"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.9.32/rekipedia_darwin_amd64.tar.gz"
      sha256 "db1b6727019d8d11cfd82541c80a79ec2f66742ebe5a2adca9eed80d5842b798"
    end
    if Hardware::CPU.arm?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.9.32/rekipedia_darwin_arm64.tar.gz"
      sha256 "0da4ae0803d31588127fa82b17a2ae938b1d3557f74008ed9643c7cc30514816"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.9.32/rekipedia_linux_amd64.tar.gz"
      sha256 "f0d6b9f972fb6f49cb8023c535d63ecea6fb561463cf418e62b4cdde6ff8c006"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.9.32/rekipedia_linux_arm64.tar.gz"
      sha256 "bfb297fc780a0f3d7f9a90a7ef2a2b0b46c461fda91458a7a2b1642677d37a41"
    end
  end

  def install
    bin.install "reki"
  end

  test do
    system "\#<built-in function bin>/reki", "--version"
  end
end
