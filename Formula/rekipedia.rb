# typed: false
# frozen_string_literal: true

class Rekipedia < Formula
  desc "Agentic repo-to-wiki — scan any codebase into a structured knowledge base"
  homepage "https://github.com/unrealandychan/rekipedia"
  version "0.9.28"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.9.28/rekipedia_darwin_amd64.tar.gz"
      sha256 "fde1e28486ff31acd69f50ad2d4673086d2f00a424c636ce7baa52f4a8a60be0"
    end
    if Hardware::CPU.arm?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.9.28/rekipedia_darwin_arm64.tar.gz"
      sha256 "797339650f712bf0bb229f72aa9d1af4a608da1b6489169443f562afc37db07f"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.9.28/rekipedia_linux_amd64.tar.gz"
      sha256 "8e7e562971202791621eb78f2d8daa47a4d55a8f96d0399adebcd2f31c8147ed"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.9.28/rekipedia_linux_arm64.tar.gz"
      sha256 "0cc4c5c48c9cc5234c1c91fb221f248a6e3cf4dffd6bafe9baa239f042552fd1"
    end
  end

  def install
    bin.install "reki"
  end

  test do
    system "\#<built-in function bin>/reki", "--version"
  end
end
