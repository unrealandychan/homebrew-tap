# typed: false
# frozen_string_literal: true

class Rekipedia < Formula
  desc "Agentic repo-to-wiki — scan any codebase into a structured knowledge base"
  homepage "https://github.com/unrealandychan/rekipedia"
  version "0.9.19"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/unrealandychan/rekipedia-releases/releases/download/v0.9.19/rekipedia_darwin_amd64.tar.gz"
      sha256 "bb39b2ef2d441d0d6666ed8b56aabd29273574a0afaa18a3002c06193ad1d17d"
    end
    if Hardware::CPU.arm?
      url "https://github.com/unrealandychan/rekipedia-releases/releases/download/v0.9.19/rekipedia_darwin_arm64.tar.gz"
      sha256 "f8dc789f8a5620457211909b0b0255d20583160f972de217a76e2832770e7b8a"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia-releases/releases/download/v0.9.19/rekipedia_linux_amd64.tar.gz"
      sha256 "9671e970cd4ed8daa8324efa9abe37e844c1e4a44e149cfe83be3090f622b80c"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia-releases/releases/download/v0.9.19/rekipedia_linux_arm64.tar.gz"
      sha256 "1fcf55edcd878cbc623d535a248010738db56ca8ae01fe0f41065b9ee907a557"
    end
  end

  def install
    bin.install "reki"
  end

  test do
    system "#<built-in function bin>/reki", "--version"
  end
end
