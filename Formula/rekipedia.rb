# typed: false
# frozen_string_literal: true

class Rekipedia < Formula
  desc "Agentic repo-to-wiki — scan any codebase into a structured knowledge base"
  homepage "https://github.com/unrealandychan/rekipedia"
  version "0.9.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/unrealandychan/rekipedia-releases/releases/download/v0.9.4/rekipedia_darwin_amd64.tar.gz"
      sha256 "fae96148238ec8c754d67f3b24c4920af4c78a517f9e108d8f12827146caf235"
    end
    if Hardware::CPU.arm?
      url "https://github.com/unrealandychan/rekipedia-releases/releases/download/v0.9.4/rekipedia_darwin_arm64.tar.gz"
      sha256 "717afbaddd7504e1b1ae01e1154a82c4110b4abffaf49e189a8737d475d734ba"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia-releases/releases/download/v0.9.4/rekipedia_linux_amd64.tar.gz"
      sha256 "d66e58254edc242a6606ba05302153edf2a68074078f8f4326d8e3fca08a67b9"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia-releases/releases/download/v0.9.4/rekipedia_linux_arm64.tar.gz"
      sha256 "d90748e27adf30c5a0b3a799bcc7d85781b2e6737d461fdcb024df5a15e5a0da"
    end
  end

  def install
    bin.install "rekipedia"
  end

  test do
    system "#{bin}/rekipedia", "--version"
  end
end
