# typed: false
# frozen_string_literal: true

class Rekipedia < Formula
  desc "Agentic repo-to-wiki — scan any codebase into a structured knowledge base"
  homepage "https://github.com/unrealandychan/rekipedia"
  version "0.11.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.11.0/rekipedia_darwin_amd64.tar.gz"
      sha256 "fbfcc873fdfc6aa48985ae84f563f63377bef03e7e271aed88b1656f6d30a632"
    end
    if Hardware::CPU.arm?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.11.0/rekipedia_darwin_arm64.tar.gz"
      sha256 "41c71c62e1ca006c794a9148fcd5097b1fdd82c96c28e87504e449cd81d336f5"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.11.0/rekipedia_linux_amd64.tar.gz"
      sha256 "ae27ad02bfce1d5f856ddf4f6a72a8496cc8b731069bea5acdaa8ef0589357f4"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.11.0/rekipedia_linux_arm64.tar.gz"
      sha256 "4a97c3515cfbc14d82e8b13339b2c496d5c252a0b0e53e775e3e927f1a154a00"
    end
  end

  def install
    bin.install "reki"
  end

  test do
    system "\#<built-in function bin>/reki", "--version"
  end
end
