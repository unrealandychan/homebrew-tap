# typed: false
# frozen_string_literal: true

class Rekipedia < Formula
  desc "Agentic repo-to-wiki — scan any codebase into a structured knowledge base"
  homepage "https://github.com/unrealandychan/rekipedia"
  version "0.9.23"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.9.23/rekipedia_darwin_amd64.tar.gz"
      sha256 "7fded6fcf29c6970abc0627e3f0ac263b897ef6e0a92d132fbde3faa5813df9c"
    end
    if Hardware::CPU.arm?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.9.23/rekipedia_darwin_arm64.tar.gz"
      sha256 "91bd6a94fb71d36e4a2c30c97335bb9eacc276caaa96abe39397bd26240b5414"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.9.23/rekipedia_linux_amd64.tar.gz"
      sha256 "9d913f5ea046c1834eb9295f02c5db3b558852387cef796d8fb42e01e1e00f51"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.9.23/rekipedia_linux_arm64.tar.gz"
      sha256 "77b071a4253aa117293807cb6ac658dabaa27612595997b24bcf22d74d207233"
    end
  end

  def install
    bin.install "reki"
  end

  test do
    system "\#<built-in function bin>/reki", "--version"
  end
end
