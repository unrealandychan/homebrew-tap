# typed: false
# frozen_string_literal: true

class Rekipedia < Formula
  desc "Agentic repo-to-wiki — scan any codebase into a structured knowledge base"
  homepage "https://github.com/unrealandychan/rekipedia"
  version "0.9.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/unrealandychan/rekipedia-releases/releases/download/v0.9.10/rekipedia_darwin_amd64.tar.gz"
      sha256 "ed4ca1ed776eb4e6038c8582183c2b39584064122ccea5cbcae1ea1c56ae5bf9"
    end
    if Hardware::CPU.arm?
      url "https://github.com/unrealandychan/rekipedia-releases/releases/download/v0.9.10/rekipedia_darwin_arm64.tar.gz"
      sha256 "1d03e4ef88502f72e8b682df9485bb7eddcc1131022a29faab0cf7d84423fd43"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia-releases/releases/download/v0.9.10/rekipedia_linux_amd64.tar.gz"
      sha256 "54b6d5be32675d3a72927f9a7a91dcca08fd9571d439bca7927bffdc51dddcdc"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia-releases/releases/download/v0.9.10/rekipedia_linux_arm64.tar.gz"
      sha256 "383d04b156e6b821b4f1ef13f2c3cb504e9b204f3e19dc358d693c4a1c934442"
    end
  end

  def install
    bin.install "rekipedia"
  end

  test do
    system "#{bin}/rekipedia", "--version"
  end
end
