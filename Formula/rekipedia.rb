# typed: false
# frozen_string_literal: true

class Rekipedia < Formula
  desc "Agentic repo-to-wiki — scan any codebase into a structured knowledge base"
  homepage "https://github.com/unrealandychan/rekipedia"
  version "0.9.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/unrealandychan/rekipedia-releases/releases/download/v0.9.6/rekipedia_darwin_amd64.tar.gz"
      sha256 "4fc1734b41b69b021fedd5d9a9ffa060f1d62a3bcd8876c6c06fee48661d0ad0"
    end
    if Hardware::CPU.arm?
      url "https://github.com/unrealandychan/rekipedia-releases/releases/download/v0.9.6/rekipedia_darwin_arm64.tar.gz"
      sha256 "42011d86b5fbf40bfb06abfcb0f9f47d76e9a2aa4fa7138c8147809f9c5993cc"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia-releases/releases/download/v0.9.6/rekipedia_linux_amd64.tar.gz"
      sha256 "baf4a8e32aaba8b1c2363810f32b0def6c9cb8c7a9865f02c73f6c0e59b3a4a8"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia-releases/releases/download/v0.9.6/rekipedia_linux_arm64.tar.gz"
      sha256 "a6d14813367e8ef1d11f269ace00eae686d750302d3bbe477a9e760c722fb00e"
    end
  end

  def install
    bin.install "rekipedia"
  end

  test do
    system "#{bin}/rekipedia", "--version"
  end
end
