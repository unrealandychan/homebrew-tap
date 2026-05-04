# typed: false
# frozen_string_literal: true

class Rekipedia < Formula
  desc "Agentic repo-to-wiki — scan any codebase into a structured knowledge base"
  homepage "https://github.com/unrealandychan/rekipedia"
  version "0.9.29"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.9.29/rekipedia_darwin_amd64.tar.gz"
      sha256 "742ba498c4789ebd95af2c474ee3f70e4b55b85b0b8e03ec49941b75626f417d"
    end
    if Hardware::CPU.arm?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.9.29/rekipedia_darwin_arm64.tar.gz"
      sha256 "14152c8cb7e91d6bd0793dee4092fb1f58e3faf058b2d469d74540b549651c35"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.9.29/rekipedia_linux_amd64.tar.gz"
      sha256 "dcacaf9deddd4b50b7b978b79daed72700e82cc2ec0b3ee4e200d948b0e222fb"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.9.29/rekipedia_linux_arm64.tar.gz"
      sha256 "566085b42adb5018ac07f982789e0d0ac9c446879920607c1dd00d8a19e55698"
    end
  end

  def install
    bin.install "reki"
  end

  test do
    system "\#<built-in function bin>/reki", "--version"
  end
end
