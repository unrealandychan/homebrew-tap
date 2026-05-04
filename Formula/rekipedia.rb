# typed: false
# frozen_string_literal: true

class Rekipedia < Formula
  desc "Agentic repo-to-wiki — scan any codebase into a structured knowledge base"
  homepage "https://github.com/unrealandychan/rekipedia"
  version "0.9.34"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.9.34/rekipedia_darwin_amd64.tar.gz"
      sha256 "165b7f749a20e47d05fe19c6ec2968a8a2f39309209fc18c01217adc3c0fed49"
    end
    if Hardware::CPU.arm?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.9.34/rekipedia_darwin_arm64.tar.gz"
      sha256 "1582023733dbc48f88b230dedc5af2f00c60e66a4b5636fc76c19b2721c5bba3"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.9.34/rekipedia_linux_amd64.tar.gz"
      sha256 "db7849b537a143d65a864a8fe62b55cd2503f820c631d49b5d54e5c6d691ccf6"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.9.34/rekipedia_linux_arm64.tar.gz"
      sha256 "7a3c60d952fc46f0363c4a793293c032a4cf0d76771b41634c531bbc7731778a"
    end
  end

  def install
    bin.install "reki"
  end

  test do
    system "\#<built-in function bin>/reki", "--version"
  end
end
