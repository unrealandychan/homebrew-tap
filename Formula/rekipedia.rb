# typed: false
# frozen_string_literal: true

class Rekipedia < Formula
  desc "Agentic repo-to-wiki — scan any codebase into a structured knowledge base"
  homepage "https://github.com/unrealandychan/rekipedia"
  version "0.9.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/unrealandychan/rekipedia-releases/releases/download/v0.9.11/rekipedia_darwin_amd64.tar.gz"
      sha256 "4dc495437ffa136622a8dc533780eec0c00d1648d836c8ce2c9455e3118d4c46"
    end
    if Hardware::CPU.arm?
      url "https://github.com/unrealandychan/rekipedia-releases/releases/download/v0.9.11/rekipedia_darwin_arm64.tar.gz"
      sha256 "c36256bc2b4b29d188df0f7c042f212c5978010fbcbe8557c14882521e066d33"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia-releases/releases/download/v0.9.11/rekipedia_linux_amd64.tar.gz"
      sha256 "abe40ee5e9ddded788703d4a763e1844d0ac642aab09811407a84202626db841"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia-releases/releases/download/v0.9.11/rekipedia_linux_arm64.tar.gz"
      sha256 "4adce852930caaeff9ffced113f0e82c2bea31be15b96e750e46ce1c0e041ca6"
    end
  end

  def install
    bin.install "reki"
  end

  test do
    system "#{bin}/reki", "--version"
  end
end
