# typed: false
# frozen_string_literal: true

class Rekipedia < Formula
  desc "Agentic repo-to-wiki — scan any codebase into a structured knowledge base"
  homepage "https://github.com/unrealandychan/rekipedia"
  version "0.9.18"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/unrealandychan/rekipedia-releases/releases/download/v0.9.18/rekipedia_darwin_amd64.tar.gz"
      sha256 "76fd4a528c97f043cdb69a98dc3fec733fe7e25983c12846d00c5226feab75bd"
    end
    if Hardware::CPU.arm?
      url "https://github.com/unrealandychan/rekipedia-releases/releases/download/v0.9.18/rekipedia_darwin_arm64.tar.gz"
      sha256 "3754e20fb0fc43e0e9ae3516e9e3447eca005d94ce5ba0c495a5092e2b050cde"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia-releases/releases/download/v0.9.18/rekipedia_linux_amd64.tar.gz"
      sha256 "c35ee352535397cc2c12a06bd69c61ac23008aa2183d51d8517f5f89ffbcb414"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia-releases/releases/download/v0.9.18/rekipedia_linux_arm64.tar.gz"
      sha256 "e35efdfb9f23a6491152741c831c19eb92526bba15d6c96a8c60f63f2fd5b9db"
    end
  end

  def install
    bin.install "reki"
  end

  test do
    system "#<built-in function bin>/reki", "--version"
  end
end
