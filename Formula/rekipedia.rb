# typed: false
# frozen_string_literal: true

class Rekipedia < Formula
  desc "Agentic repo-to-wiki — scan any codebase into a structured knowledge base"
  homepage "https://github.com/unrealandychan/rekipedia"
  version "0.9.36"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/unrealandychan/rekipedia-releases/releases/download/v0.9.36/rekipedia_darwin_amd64.tar.gz"
      sha256 "e3ff5f6d8920c8449fda81e4c98a7c1fa5da27a495b2e0f6f2cbc50ce5ddfb88"
    end
    if Hardware::CPU.arm?
      url "https://github.com/unrealandychan/rekipedia-releases/releases/download/v0.9.36/rekipedia_darwin_arm64.tar.gz"
      sha256 "bd0b60a3fb9f61e27da106fded56d724f5b89049247e3b6a8621b3778c7d3d2e"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia-releases/releases/download/v0.9.36/rekipedia_linux_amd64.tar.gz"
      sha256 "c6c974cd939ff767979eb39ce97592746e20d70415b2159636ef71324302c4fa"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia-releases/releases/download/v0.9.36/rekipedia_linux_arm64.tar.gz"
      sha256 "eda7ce9538ae7035383973bdc3a255123bca5afe5f7354b1a97f91a6f6bbb15e"
    end
  end

  def install
    bin.install "reki"
  end

  test do
    system "#{bin}/reki", "--version"
  end
end
