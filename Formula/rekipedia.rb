# typed: false
# frozen_string_literal: true

class Rekipedia < Formula
  desc "Agentic repo-to-wiki — scan any codebase into a structured knowledge base"
  homepage "https://github.com/unrealandychan/rekipedia"
  version "0.15.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.15.1/rekipedia_darwin_amd64.tar.gz"
      sha256 "c63f655dd102b80cf4be2ecaf4dfab9fd035e7e121e540c372ad10eb1b7fe6ab"
    end
    if Hardware::CPU.arm?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.15.1/rekipedia_darwin_arm64.tar.gz"
      sha256 "123bc24a7d84a508ba88afd2a0950f0e95618105c1530f61992e0d5e1ab45896"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.15.1/rekipedia_linux_amd64.tar.gz"
      sha256 "a0f4e404c947e492f562bb9b1c4dfb33e7d9e04f957d1bfcbf342118fb2a00cc"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.15.1/rekipedia_linux_arm64.tar.gz"
      sha256 "86d50c72c4a84a229016e45af82c31ba8e82682f6a1cad6a294fca25e09f5460"
    end
  end

  def install
    bin.install "reki"
  end

  test do
    system "\#<built-in function bin>/reki", "--version"
  end
end
