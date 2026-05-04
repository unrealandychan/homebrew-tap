# typed: false
# frozen_string_literal: true

class Rekipedia < Formula
  desc "Agentic repo-to-wiki — scan any codebase into a structured knowledge base"
  homepage "https://github.com/unrealandychan/rekipedia"
  version "0.9.33"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.9.33/rekipedia_darwin_amd64.tar.gz"
      sha256 "2b19794262f0a1a3f070948c678e742a7f7c0ff39d79968b3dbc135622956d89"
    end
    if Hardware::CPU.arm?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.9.33/rekipedia_darwin_arm64.tar.gz"
      sha256 "dd3d52f08345e5310e842bcd0ae2fe8da9cc8986a48052126b2331ed7766f4c1"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.9.33/rekipedia_linux_amd64.tar.gz"
      sha256 "9b9110e6b8c33605675aa31ba29d2f9fa5fa8e941508c2fb59b7ee177b32f92f"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.9.33/rekipedia_linux_arm64.tar.gz"
      sha256 "a42f0cf26bf1c5e80962f5eddd09588849a6f3fe0d62a73084497f29420dbaa1"
    end
  end

  def install
    bin.install "reki"
  end

  test do
    system "\#<built-in function bin>/reki", "--version"
  end
end
