# typed: false
# frozen_string_literal: true

class CloseWiki < Formula
  desc "Agentic repo-to-wiki — scan any codebase into a structured knowledge base"
  homepage "https://github.com/unrealandychan/close-wiki"
  version "0.9.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/unrealandychan/close-wiki-releases/releases/download/v0.9.3/close-wiki_darwin_amd64.tar.gz"
      sha256 "958c8ebfc0c4ff80fbff59e7ed8396aebf320c859dec70ad803781148ed7580a"
    end
    if Hardware::CPU.arm?
      url "https://github.com/unrealandychan/close-wiki-releases/releases/download/v0.9.3/close-wiki_darwin_arm64.tar.gz"
      sha256 "01522d0f45dfdf196b6dc0f12d7f0d173ecd2ceaeb6cde7a2addf1ac5f76b164"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/close-wiki-releases/releases/download/v0.9.3/close-wiki_linux_amd64.tar.gz"
      sha256 "37dd2aecfc5779e71b7a8d6b70ffd7ad8119ca6e16868928cf76fd09cf5af1a0"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/close-wiki-releases/releases/download/v0.9.3/close-wiki_linux_arm64.tar.gz"
      sha256 "6a31d73f1cc11d28423ae23715fbbb923c9f2d6cfe08a03c721c3768664cf363"
    end
  end

  def install
    bin.install "close-wiki"
  end

  test do
    system "#{bin}/close-wiki", "--version"
  end
end
