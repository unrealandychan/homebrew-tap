# typed: false
# frozen_string_literal: true

class Rekipedia < Formula
  desc "Agentic repo-to-wiki — scan any codebase into a structured knowledge base"
  homepage "https://github.com/unrealandychan/rekipedia"
  version "0.9.38"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.9.38/rekipedia_darwin_amd64.tar.gz"
      sha256 "f7716659da48d9d763cbf69be65f183955feee7ba4777fd865e8aca977aaaa1b"
    end
    if Hardware::CPU.arm?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.9.38/rekipedia_darwin_arm64.tar.gz"
      sha256 "4be9c0bd38a34afad41dc4f385d8a0af665004897f2f6b23828893cab0caf0b6"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.9.38/rekipedia_linux_amd64.tar.gz"
      sha256 "8e48ac0e5b673566c82fd5e6f0f140e4ddfe0cb665e4ddd6562632e166d52ad9"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.9.38/rekipedia_linux_arm64.tar.gz"
      sha256 "861d2f6588fb6f4d82fd38b36bb868616127b9e5037a4eef093c0aa4c93b6f22"
    end
  end

  def install
    bin.install "reki"
  end

  test do
    system "\#<built-in function bin>/reki", "--version"
  end
end
