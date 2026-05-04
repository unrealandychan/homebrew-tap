# typed: false
# frozen_string_literal: true

class Rekipedia < Formula
  desc "Agentic repo-to-wiki — scan any codebase into a structured knowledge base"
  homepage "https://github.com/unrealandychan/rekipedia"
  version "0.9.15"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/unrealandychan/rekipedia-releases/releases/download/v0.9.15/rekipedia_darwin_amd64.tar.gz"
      sha256 "c00fa82e45a67028dbd4829ad150843b4ba2473c41ad6ee96c61b530abff35ec"
    end
    if Hardware::CPU.arm?
      url "https://github.com/unrealandychan/rekipedia-releases/releases/download/v0.9.15/rekipedia_darwin_arm64.tar.gz"
      sha256 "3be6342f210803872bd02a299f91c8132bf2508c40e97bdaf45156632ad67218"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia-releases/releases/download/v0.9.15/rekipedia_linux_amd64.tar.gz"
      sha256 "6ceae2ee60bdada6fa7f04e4f1c1e6ab7d05248744955b497ed88135b9de37a7"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia-releases/releases/download/v0.9.15/rekipedia_linux_arm64.tar.gz"
      sha256 "d63917e7cd9d6c6d687871c806996f00b17c433d8e27defd9dd5182451f8e9fe"
    end
  end

  def install
    bin.install "reki"
  end

  test do
    system "#<built-in function bin>/reki", "--version"
  end
end
