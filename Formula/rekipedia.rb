# typed: false
# frozen_string_literal: true

class Rekipedia < Formula
  desc "Agentic repo-to-wiki — scan any codebase into a structured knowledge base"
  homepage "https://github.com/unrealandychan/rekipedia"
  version "0.9.31"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.9.31/rekipedia_darwin_amd64.tar.gz"
      sha256 "7835ec7cbe644edab4f2bbc253e7f4649211c1614231303ae1abcb6be2834d91"
    end
    if Hardware::CPU.arm?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.9.31/rekipedia_darwin_arm64.tar.gz"
      sha256 "23d852e71f8558a0b94a1c974ee96f94c9d4efe7993413677641db9fcf7aa02e"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.9.31/rekipedia_linux_amd64.tar.gz"
      sha256 "096d215e59add251b488e64968ed3e48119afcb66c907f2cfee80c0d679fb363"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.9.31/rekipedia_linux_arm64.tar.gz"
      sha256 "27dba23368c512ec1c7b6f01d967d9405018d1325041e0009f9a2c72e6572c5c"
    end
  end

  def install
    bin.install "reki"
  end

  test do
    system "\#<built-in function bin>/reki", "--version"
  end
end
