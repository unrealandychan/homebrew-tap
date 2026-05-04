# typed: false
# frozen_string_literal: true

class Rekipedia < Formula
  desc "Agentic repo-to-wiki — scan any codebase into a structured knowledge base"
  homepage "https://github.com/unrealandychan/rekipedia"
  version "0.9.20"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/unrealandychan/rekipedia-releases/releases/download/v0.9.20/rekipedia_darwin_amd64.tar.gz"
      sha256 "e360172dc548b50b4b78b913237ee1e179816ec2d9442bbb800e23e035fe8062"
    end
    if Hardware::CPU.arm?
      url "https://github.com/unrealandychan/rekipedia-releases/releases/download/v0.9.20/rekipedia_darwin_arm64.tar.gz"
      sha256 "727d9613da6321a4f2436217f12c07c4bb74e37dc1dd5520583000737251db5d"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia-releases/releases/download/v0.9.20/rekipedia_linux_amd64.tar.gz"
      sha256 "6bb1f1b5433280eab0c59b864bc258136c700d742ca9ae3a1fdd4d22169cf376"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia-releases/releases/download/v0.9.20/rekipedia_linux_arm64.tar.gz"
      sha256 "25ecab96fe9410ac74acbde71b8675720a5ae727040ee4b6da7cd2b3c7fb8d54"
    end
  end

  def install
    bin.install "reki"
  end

  test do
    system "#<built-in function bin>/reki", "--version"
  end
end
