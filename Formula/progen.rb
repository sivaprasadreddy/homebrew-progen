# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Progen < Formula
  desc "Project Generator CLI"
  homepage "https://github.com/sivaprasadreddy/progen"
  version "0.0.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sivaprasadreddy/progen/releases/download/v0.0.3/progen_darwin_arm64.tar.gz"
      sha256 "dea59c4ba68c7d01051a3c67108020ed6db4f8f0b4b9b967eb7953444fac786a"

      def install
        bin.install "progen"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sivaprasadreddy/progen/releases/download/v0.0.3/progen_darwin_x86_64.tar.gz"
      sha256 "e22b67427661a18c9f5ae33994746d53e48a6d277c061adfa4c3d0965247ffd2"

      def install
        bin.install "progen"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sivaprasadreddy/progen/releases/download/v0.0.3/progen_linux_arm64.tar.gz"
      sha256 "0845149a8eefdb3a6e0f1964ecd4ce96e24c9b728f2aa06ec01cf7a63ef01f58"

      def install
        bin.install "progen"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sivaprasadreddy/progen/releases/download/v0.0.3/progen_linux_x86_64.tar.gz"
      sha256 "464cb6f3e820b66e78cbe41f94612fb769891fbb773b5bd3709cefe465db09ff"

      def install
        bin.install "progen"
      end
    end
  end

  test do
    system "#{bin}/progen --version"
  end
end
