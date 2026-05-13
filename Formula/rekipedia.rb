# typed: false
# frozen_string_literal: true

class Rekipedia < Formula
  desc "Agentic repo-to-wiki — scan any codebase into a structured knowledge base"
  homepage "https://github.com/unrealandychan/rekipedia"
  version "0.15.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.15.0/rekipedia_darwin_amd64.tar.gz"
      sha256 "786f0feed520e0f2ea5bbda9259e2b48bae278dd918cdb250540f9d517238d8f"
    end
    if Hardware::CPU.arm?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.15.0/rekipedia_darwin_arm64.tar.gz"
      sha256 "60f7aba56894b5a20a6190705d487cea127046b57e9708c24f041e94025627d0"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.15.0/rekipedia_linux_amd64.tar.gz"
      sha256 "8ff99c44139af47a32937f10bfc7aff994b23ad48f056f45d3342e6494df07d5"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.15.0/rekipedia_linux_arm64.tar.gz"
      sha256 "fa6d7d33839667880ef60bb44b007c02405ebcd832c9a181736cfcc98a006fef"
    end
  end

  def install
    bin.install "reki"
  end

  test do
    system "\#<built-in function bin>/reki", "--version"
  end
end
