# typed: false
# frozen_string_literal: true

class Rekipedia < Formula
  desc "Agentic repo-to-wiki — scan any codebase into a structured knowledge base"
  homepage "https://github.com/unrealandychan/rekipedia"
  version "0.9.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/unrealandychan/rekipedia-releases/releases/download/v0.9.7/rekipedia_darwin_amd64.tar.gz"
      sha256 "87316ac22f2fa108f953283247dd6345cfdde9c3efc8eb4cc6d9512312ee385b"
    end
    if Hardware::CPU.arm?
      url "https://github.com/unrealandychan/rekipedia-releases/releases/download/v0.9.7/rekipedia_darwin_arm64.tar.gz"
      sha256 "38a1164c11bafaf6d06014a2983f7578ed0c5c7a1711af4e06d13a93509c4218"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia-releases/releases/download/v0.9.7/rekipedia_linux_amd64.tar.gz"
      sha256 "70969db49c8848e5c0809f6039e2f7c2b4f02657db3ea54f0fc9694ce9736aa0"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia-releases/releases/download/v0.9.7/rekipedia_linux_arm64.tar.gz"
      sha256 "1f8553d2665f06811469f447a92d2ae2e35c5896d3f9d6305df7aaa9d5df570f"
    end
  end

  def install
    bin.install "rekipedia"
  end

  test do
    system "#{bin}/rekipedia", "--version"
  end
end
