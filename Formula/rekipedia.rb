# typed: false
# frozen_string_literal: true

class Rekipedia < Formula
  desc "Agentic repo-to-wiki — scan any codebase into a structured knowledge base"
  homepage "https://github.com/unrealandychan/rekipedia"
  version "0.10.2"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.10.2/rekipedia_darwin_amd64.tar.gz"
      sha256 "a2bde1a785878988361fd6e754ec1b42d130105c701e0cb73c29c642f5bf36d3"
    end
    if Hardware::CPU.arm?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.10.2/rekipedia_darwin_arm64.tar.gz"
      sha256 "44b83912fa075fda151d70976fed255cd9bf741cf84cf5818cd9987ae0fe7e6f"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.10.2/rekipedia_linux_amd64.tar.gz"
      sha256 "6e0b46f4010db6da7da02c951324a6aaa0995071806d9e72dde2eb8039866fec"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.10.2/rekipedia_linux_arm64.tar.gz"
      sha256 "b808586197dd32e8e289db2f101601174272159c3e418f6a8e7781dc858835ab"
    end
  end

  def install
    bin.install "reki"
  end

  test do
    system "\#<built-in function bin>/reki", "--version"
  end
end
