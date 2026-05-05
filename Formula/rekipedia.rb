# typed: false
# frozen_string_literal: true

class Rekipedia < Formula
  desc "Agentic repo-to-wiki — scan any codebase into a structured knowledge base"
  homepage "https://github.com/unrealandychan/rekipedia"
  version "0.9.39"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.9.39/rekipedia_darwin_amd64.tar.gz"
      sha256 "ff82dc246e585510ceba4ade151d0b7cfa9563ef2eb17851ea8a9766f33af659"
    end
    if Hardware::CPU.arm?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.9.39/rekipedia_darwin_arm64.tar.gz"
      sha256 "9d253ca311fb986f834fb8edff3ba234ef2b5f86eff57c33e449ca03e2448a02"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.9.39/rekipedia_linux_amd64.tar.gz"
      sha256 "84752e7f52dad8005f0d8b541921a745708d16d351eabe5121e28a1fb1799945"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.9.39/rekipedia_linux_arm64.tar.gz"
      sha256 "2f6a843c1730f61b5f94e32a28ff5bf0176a46c85bc991fbccfa40cf0a290279"
    end
  end

  def install
    bin.install "reki"
  end

  test do
    system "\#<built-in function bin>/reki", "--version"
  end
end
