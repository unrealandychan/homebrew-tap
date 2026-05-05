# typed: false
# frozen_string_literal: true

class Rekipedia < Formula
  desc "Agentic repo-to-wiki — scan any codebase into a structured knowledge base"
  homepage "https://github.com/unrealandychan/rekipedia"
  version "0.10.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.10.0/rekipedia_darwin_amd64.tar.gz"
      sha256 "a5e575411e84f8cf819f35aee5945c267e88354f9d43efdb9098096e6e40bb03"
    end
    if Hardware::CPU.arm?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.10.0/rekipedia_darwin_arm64.tar.gz"
      sha256 "87335da1857b72a3a481ccd17eac4561125790b020f5958ea11257d1ef99526c"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.10.0/rekipedia_linux_amd64.tar.gz"
      sha256 "ae9e186eda06533c3342c3a32d69d877a027bcb3a9d2a7c50e91b6aef42ca517"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.10.0/rekipedia_linux_arm64.tar.gz"
      sha256 "5fab9349f6b7d2ad605d52f58f47f4e72c1663312e645b8561efaab399227f4d"
    end
  end

  def install
    bin.install "reki"
  end

  test do
    system "\#<built-in function bin>/reki", "--version"
  end
end
