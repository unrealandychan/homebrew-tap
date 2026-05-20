# typed: false
# frozen_string_literal: true

class Rekipedia < Formula
  desc "Agentic repo-to-wiki — scan any codebase into a structured knowledge base"
  homepage "https://github.com/unrealandychan/rekipedia"
  version "0.17.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.17.0/rekipedia_darwin_amd64.tar.gz"
      sha256 "5fc3652b63fb33217b20095f04ee20428b088b1201f505682ae816e8cca86077"
    end
    if Hardware::CPU.arm?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.17.0/rekipedia_darwin_arm64.tar.gz"
      sha256 "41e92f55387060e95f35d15fb26919fb36744599fcfddf42bac2315a6ef8c2a7"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.17.0/rekipedia_linux_amd64.tar.gz"
      sha256 "c701b86870bfa610ff7f2264a594c2500cbcfac21c0f085200c9a68b32ccf33b"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/unrealandychan/rekipedia/releases/download/v0.17.0/rekipedia_linux_arm64.tar.gz"
      sha256 "dd88caf11d27cd28e39bc4c4393f1a3c7075bbb1bc5efd0d11ee90a4bab1343a"
    end
  end

  def install
    bin.install "reki"
  end

  test do
    system "\#<built-in function bin>/reki", "--version"
  end
end
