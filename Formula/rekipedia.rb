# typed: false
# frozen_string_literal: true

class Rekipedia < Formula
  desc "Agentic repo-to-wiki — scan any codebase into a structured knowledge base"
  homepage "https://github.com/unrealandychan/rekipedia"
  version "0.17.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.17.1/rekipedia_darwin_amd64.tar.gz"
      sha256 "9d193128d2d72b42b19842805a746c1b9f9f8761945fb1f73e480829d8de325e"
    end
    if Hardware::CPU.arm?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.17.1/rekipedia_darwin_arm64.tar.gz"
      sha256 "0b2bb129982a7c62ebcd963fe5916dfc2eb0b168830e9a884f073b7915aa3270"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.17.1/rekipedia_linux_amd64.tar.gz"
      sha256 "612345944f8cd285bd1a99d1c2d8eda2c8aa535407c8e8eac5757c92cd495b98"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.17.1/rekipedia_linux_arm64.tar.gz"
      sha256 "486c7554e0c7d24118212076078f20c40cdecae3e2f8894eee4a367e2e4bb1db"
    end
  end

  def install
    bin.install "reki"
  end

  test do
    system "\#<built-in function bin>/reki", "--version"
  end
end
