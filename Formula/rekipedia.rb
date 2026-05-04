# typed: false
# frozen_string_literal: true

class Rekipedia < Formula
  desc "Agentic repo-to-wiki — scan any codebase into a structured knowledge base"
  homepage "https://github.com/unrealandychan/rekipedia"
  version "0.9.27"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.9.27/rekipedia_darwin_amd64.tar.gz"
      sha256 "ffefb14d6d6aeafcda0e19b70204462260445f4b97b81d236590eb11a7ec42c5"
    end
    if Hardware::CPU.arm?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.9.27/rekipedia_darwin_arm64.tar.gz"
      sha256 "8bd9ce3ddbfa08264d75d29bcce64097022f5b6aca8b95226e8a62dc5b2f7486"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.9.27/rekipedia_linux_amd64.tar.gz"
      sha256 "86f5fe636a344102912bf6c7d0fa6c653c169ac101af5f18eaff586e02391504"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.9.27/rekipedia_linux_arm64.tar.gz"
      sha256 "5449383712960d5408311165da7693785d0b4910e7bd2333c210c19ad72f0506"
    end
  end

  def install
    bin.install "reki"
  end

  test do
    system "\#<built-in function bin>/reki", "--version"
  end
end
