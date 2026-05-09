# typed: false
# frozen_string_literal: true

class Rekipedia < Formula
  desc "Agentic repo-to-wiki — scan any codebase into a structured knowledge base"
  homepage "https://github.com/unrealandychan/rekipedia"
  version "0.13.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.13.0/rekipedia_darwin_amd64.tar.gz"
      sha256 "f108491b3d887b0c768f60cae89df2f3267f9d893030dd189bde0af2c8a0e5bd"
    end
    if Hardware::CPU.arm?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.13.0/rekipedia_darwin_arm64.tar.gz"
      sha256 "23b5cec3783742603216f7142faf56dcb43e9fd028cd767eecafbf54ec31520f"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.13.0/rekipedia_linux_amd64.tar.gz"
      sha256 "8c484ff448f7a6d7053922fbdff89b4f0bef7644d5f8b17b3cb0102b38162ca4"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.13.0/rekipedia_linux_arm64.tar.gz"
      sha256 "b909f8e87e2eafdd7290657efda09cf5ba1d8685f5b603017911a7392b5e7df2"
    end
  end

  def install
    bin.install "reki"
  end

  test do
    system "\#<built-in function bin>/reki", "--version"
  end
end
