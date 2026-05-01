# typed: false
# frozen_string_literal: true

class CloseWiki < Formula
  desc "Agentic repo-to-wiki — scan any codebase into a structured knowledge base"
  homepage "https://github.com/unrealandychan/close-wiki"
  version "0.9.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/unrealandychan/close-wiki-releases/releases/download/v0.9.2/close-wiki_darwin_amd64.tar.gz"
      sha256 "8a10d3d613e6715c32de9fd03dd2c0bf1c6c475021e983a6bd82b082658c6175"
    end
    if Hardware::CPU.arm?
      url "https://github.com/unrealandychan/close-wiki-releases/releases/download/v0.9.2/close-wiki_darwin_arm64.tar.gz"
      sha256 "d926701d1427b2222e84d0f61425a522b0d36a7f0c872baec1d7b5104099e3b0"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/close-wiki-releases/releases/download/v0.9.2/close-wiki_linux_amd64.tar.gz"
      sha256 "b51dc76b0de44bcf445af04d17ca184d489dc7d6cbdb7560698819f7dc9058cc"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/close-wiki-releases/releases/download/v0.9.2/close-wiki_linux_arm64.tar.gz"
      sha256 "a4143156915a7ec7e839aa5a676b9b67a438bd67f56892d90e10407f3d5df746"
    end
  end

  def install
    bin.install "close-wiki"
  end

  test do
    system "#{bin}/close-wiki", "--version"
  end
end
