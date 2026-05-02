# typed: false
# frozen_string_literal: true

class Rekipedia < Formula
  desc "Agentic repo-to-wiki — scan any codebase into a structured knowledge base"
  homepage "https://github.com/unrealandychan/rekipedia"
  version "0.9.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/unrealandychan/rekipedia-releases/releases/download/v0.9.9/rekipedia_darwin_amd64.tar.gz"
      sha256 "3d0836b054744285bac65cba84bd42a86821419c585dd58c71379593183ab412"
    end
    if Hardware::CPU.arm?
      url "https://github.com/unrealandychan/rekipedia-releases/releases/download/v0.9.9/rekipedia_darwin_arm64.tar.gz"
      sha256 "865c531e415f3b69bd5b5700026542ae0b39d62b91ffdc0e060576ceda0759ae"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia-releases/releases/download/v0.9.9/rekipedia_linux_amd64.tar.gz"
      sha256 "c9e5ff98af40a62443fc931e7832633b7427a879073405534fb6fcb93230ee1b"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia-releases/releases/download/v0.9.9/rekipedia_linux_arm64.tar.gz"
      sha256 "6bb264ada32fcc72480ef803e7b1e3d25d10c1ee9164d6ec20bacc96cdcb69c8"
    end
  end

  def install
    bin.install "rekipedia"
  end

  test do
    system "#{bin}/rekipedia", "--version"
  end
end
