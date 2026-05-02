# typed: false
# frozen_string_literal: true

class Rekipedia < Formula
  desc "Agentic repo-to-wiki — scan any codebase into a structured knowledge base"
  homepage "https://github.com/unrealandychan/rekipedia"
  version "0.9.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/unrealandychan/rekipedia-releases/releases/download/v0.9.8/rekipedia_darwin_amd64.tar.gz"
      sha256 "d2a307b5b763f13a6f9c3c8dfcdb4c2ac9d285aff4b40873c07e8555b2d3cf4f"
    end
    if Hardware::CPU.arm?
      url "https://github.com/unrealandychan/rekipedia-releases/releases/download/v0.9.8/rekipedia_darwin_arm64.tar.gz"
      sha256 "de77cc27c788bca75172542d24d7ce3bc10a91341ce04182e3234cf777757c62"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia-releases/releases/download/v0.9.8/rekipedia_linux_amd64.tar.gz"
      sha256 "a00ba1e4a4b42cdcde1a063aa12e784aa385ffecae69c0b10c95363c17992bc5"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia-releases/releases/download/v0.9.8/rekipedia_linux_arm64.tar.gz"
      sha256 "2129e0d79264217f339334349539feaad4435436dcdd98f64a3b64f0b54f3fde"
    end
  end

  def install
    bin.install "rekipedia"
  end

  test do
    system "#{bin}/rekipedia", "--version"
  end
end
