# typed: false
# frozen_string_literal: true

class CloseWiki < Formula
  desc "Agentic repo-to-wiki — scan any codebase into a structured knowledge base"
  homepage "https://github.com/unrealandychan/close-wiki"
  version "0.9.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/unrealandychan/close-wiki-releases/releases/download/v0.9.1/close-wiki_darwin_amd64.tar.gz"
      sha256 "7e01fc47390251bcad5266eec17f192b84a96f4df598a5f4074a4a2be91fec79"
    end
    if Hardware::CPU.arm?
      url "https://github.com/unrealandychan/close-wiki-releases/releases/download/v0.9.1/close-wiki_darwin_arm64.tar.gz"
      sha256 "bed562123460989cbe42050ef47d6e5301c19938b09a0a04bf86e926f9758eb8"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/close-wiki-releases/releases/download/v0.9.1/close-wiki_linux_amd64.tar.gz"
      sha256 "eab4fe8109d20da77706e1efbe802f9cbfd60565f90e6c7f9d7b792fba835a30"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/close-wiki-releases/releases/download/v0.9.1/close-wiki_linux_arm64.tar.gz"
      sha256 "a3df7ec8e6cd5740c1d697730e2ec1209b6848587a2b9862b5868dd3a7fd219b"
    end
  end

  def install
    bin.install "close-wiki"
  end

  test do
    system "#{bin}/close-wiki", "--version"
  end
end
