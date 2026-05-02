# typed: false
# frozen_string_literal: true

class Rekipedia < Formula
  desc "Agentic repo-to-wiki — scan any codebase into a structured knowledge base"
  homepage "https://github.com/unrealandychan/rekipedia"
  version "0.9.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/unrealandychan/rekipedia-releases/releases/download/v0.9.12/rekipedia_darwin_amd64.tar.gz"
      sha256 "56873930b30c317be981f4590f336e1658f1ef391f45217e0514eb6fc0a42c44"
    end
    if Hardware::CPU.arm?
      url "https://github.com/unrealandychan/rekipedia-releases/releases/download/v0.9.12/rekipedia_darwin_arm64.tar.gz"
      sha256 "9acabe4d529326fb5fc59f10067b44cc6f1471ac1c939e858adfb67b663afe04"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia-releases/releases/download/v0.9.12/rekipedia_linux_amd64.tar.gz"
      sha256 "62f89dc7b1f881590b90b2d8b8549b5ab370bd6a587ff9f02da027ea6c29235b"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia-releases/releases/download/v0.9.12/rekipedia_linux_arm64.tar.gz"
      sha256 "dbd5c2ff2c9c35909d167018db2205308cdb95269862a7d4c8779d97ec4931c2"
    end
  end

  def install
    bin.install "reki"
  end

  test do
    system "#<built-in function bin>/reki", "--version"
  end
end
