# typed: false
# frozen_string_literal: true

class Rekipedia < Formula
  desc "Agentic repo-to-wiki — scan any codebase into a structured knowledge base"
  homepage "https://github.com/unrealandychan/rekipedia"
  version "0.10.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.10.1/rekipedia_darwin_amd64.tar.gz"
      sha256 "78feb6c79eb50f62340586eff69b8cab9f6dc4f90b5fc74c0887b31aac59299d"
    end
    if Hardware::CPU.arm?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.10.1/rekipedia_darwin_arm64.tar.gz"
      sha256 "453632c287dc48c3d33fa2ca9ecc69d6a68a42db737c6030d36fddafc41ca35f"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.10.1/rekipedia_linux_amd64.tar.gz"
      sha256 "a003da5670347dc614dfc97b458832222c784f58e4e8fd9bcc75d0028738bf2c"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.10.1/rekipedia_linux_arm64.tar.gz"
      sha256 "d246817f5ae88d83aab9bd92fcdaef1359028fe57b3cfdffa74eb3fda84f7a7e"
    end
  end

  def install
    bin.install "reki"
  end

  test do
    system "\#<built-in function bin>/reki", "--version"
  end
end
