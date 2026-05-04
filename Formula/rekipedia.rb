# typed: false
# frozen_string_literal: true

class Rekipedia < Formula
  desc "Agentic repo-to-wiki — scan any codebase into a structured knowledge base"
  homepage "https://github.com/unrealandychan/rekipedia"
  version "0.9.26"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.9.26/rekipedia_darwin_amd64.tar.gz"
      sha256 "2783003f834623bb919ab915e9ee143651d3c5241cb31480a2ef44add370ef91"
    end
    if Hardware::CPU.arm?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.9.26/rekipedia_darwin_arm64.tar.gz"
      sha256 "6d17d03cb5a8d6e82687b6268adb1ba7a6e4fd57807bb1e78c8e3f05fef29868"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.9.26/rekipedia_linux_amd64.tar.gz"
      sha256 "e1cec06e0da5ff047f62a53d263e7b30700ea7b69ac6166918bf0ba757c8053b"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.9.26/rekipedia_linux_arm64.tar.gz"
      sha256 "13fe24b51d182ff38a94de8e7d1bb0b9c39d331c710a0f820383b18b3c425295"
    end
  end

  def install
    bin.install "reki"
  end

  test do
    system "\#<built-in function bin>/reki", "--version"
  end
end
