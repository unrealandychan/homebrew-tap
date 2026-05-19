# typed: false
# frozen_string_literal: true

class Rekipedia < Formula
  desc "Agentic repo-to-wiki — scan any codebase into a structured knowledge base"
  homepage "https://github.com/unrealandychan/rekipedia"
  version "0.16.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.16.0/rekipedia_darwin_amd64.tar.gz"
      sha256 "538ea4c1874ad610aee8badcfe28be0ca4749d9535c37462c87cc94efc1f4f06"
    end
    if Hardware::CPU.arm?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.16.0/rekipedia_darwin_arm64.tar.gz"
      sha256 "74e9c12c1c396c919bf94b572f5907a33f23a5eb8ce4ce6b5be4403b09df7ebb"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.16.0/rekipedia_linux_amd64.tar.gz"
      sha256 "b33293b382292f262138179054b779bf4f12333b93a4f358d11cc2f16ce8fb5a"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.16.0/rekipedia_linux_arm64.tar.gz"
      sha256 "09722ef893b4b19adec41ede74906fae5dcdee74f1dfcf302bdd2b8f8c9dd692"
    end
  end

  def install
    bin.install "reki"
  end

  test do
    system "\#<built-in function bin>/reki", "--version"
  end
end
