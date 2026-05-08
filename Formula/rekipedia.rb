# typed: false
# frozen_string_literal: true

class Rekipedia < Formula
  desc "Agentic repo-to-wiki — scan any codebase into a structured knowledge base"
  homepage "https://github.com/unrealandychan/rekipedia"
  version "0.12.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.12.0/rekipedia_darwin_amd64.tar.gz"
      sha256 "9933f265a4ff741e95f65021b68e6dba603f14c790a641ca19b94dab855d8515"
    end
    if Hardware::CPU.arm?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.12.0/rekipedia_darwin_arm64.tar.gz"
      sha256 "82c6b0fd1756066459d2cbfc0cbd7cb417a8f89bb440b9ca02292f99ccb05ff5"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.12.0/rekipedia_linux_amd64.tar.gz"
      sha256 "e522867f80bac5c3d0782ccedd16d438eddb4ef067ad41ae9dc5daaecdf719d0"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.12.0/rekipedia_linux_arm64.tar.gz"
      sha256 "4c19807d4ead871b4ddd846a9353a8d8b37f19dd22c2101e3d88a6aac892ac7c"
    end
  end

  def install
    bin.install "reki"
  end

  test do
    system "\#<built-in function bin>/reki", "--version"
  end
end
