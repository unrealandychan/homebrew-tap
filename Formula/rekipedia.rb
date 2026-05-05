# typed: false
# frozen_string_literal: true

class Rekipedia < Formula
  desc "Agentic repo-to-wiki — scan any codebase into a structured knowledge base"
  homepage "https://github.com/unrealandychan/rekipedia"
  version "0.9.37"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.9.37/rekipedia_darwin_amd64.tar.gz"
      sha256 "c8bbc6d982b55f1033e2eb1fa5f1e8f68cd8304da1edea406589f710c9d46bf1"
    end
    if Hardware::CPU.arm?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.9.37/rekipedia_darwin_arm64.tar.gz"
      sha256 "ce671470df4df196f59142dc62c0103e3f1af278a825e1fb565aef338527ff50"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.9.37/rekipedia_linux_amd64.tar.gz"
      sha256 "cb4ccc4ca74ac2986ec24e21950f7be1fa86f98559279debfddd71b10bf69694"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.9.37/rekipedia_linux_arm64.tar.gz"
      sha256 "8f7a89825ed0ba0d849901a2e91f840ae294f73cd217505f89ef4a036697fd4e"
    end
  end

  def install
    bin.install "reki"
  end

  test do
    system "\#<built-in function bin>/reki", "--version"
  end
end
