# typed: false
# frozen_string_literal: true

class Rekipedia < Formula
  desc "Agentic repo-to-wiki — scan any codebase into a structured knowledge base"
  homepage "https://github.com/unrealandychan/rekipedia"
  version "0.9.35"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.9.35/rekipedia_darwin_amd64.tar.gz"
      sha256 "ff37fabdbc1a6e19a4b78c644af19f1e73f43dbc0d52500bfbc6df0cbf295c0b"
    end
    if Hardware::CPU.arm?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.9.35/rekipedia_darwin_arm64.tar.gz"
      sha256 "8f91fbbbc133784a744d31393bf7f7848f5bc59bdb372901c5c5a274cee0f02f"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.9.35/rekipedia_linux_amd64.tar.gz"
      sha256 "9156bc21fd2b237a2a83f3526bb716d7687d17cc0881dc28e28954a5b9e994ee"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.9.35/rekipedia_linux_arm64.tar.gz"
      sha256 "f45a7456acc8bafee76849b24b0c9e8d55362718832cde084cd9e013f6733154"
    end
  end

  def install
    bin.install "reki"
  end

  test do
    system "\#<built-in function bin>/reki", "--version"
  end
end
