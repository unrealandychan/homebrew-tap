# typed: false
# frozen_string_literal: true

class Rekipedia < Formula
  desc "Agentic repo-to-wiki — scan any codebase into a structured knowledge base"
  homepage "https://github.com/unrealandychan/rekipedia"
  version "0.14.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.14.0/rekipedia_darwin_amd64.tar.gz"
      sha256 "3119f732c13b8033b6f02b78162fa3f2dd55d093a5330aba84f4b0397c9e7874"
    end
    if Hardware::CPU.arm?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.14.0/rekipedia_darwin_arm64.tar.gz"
      sha256 "a5830f6b18c30d16b8440f6d40a07c5ec2b22058a3dad6a48978150c4df3191a"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.14.0/rekipedia_linux_amd64.tar.gz"
      sha256 "4bb4b45ab2635e34d112904506979406d63cf4b6d25ca16dfc8c3eb58a04ad2f"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.14.0/rekipedia_linux_arm64.tar.gz"
      sha256 "420360fead18ade95aa7f3278539f70bc70a478f74f4f82db8ecd452303ec335"
    end
  end

  def install
    bin.install "reki"
  end

  test do
    system "\#<built-in function bin>/reki", "--version"
  end
end
