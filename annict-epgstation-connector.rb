# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AnnictEpgstationConnector < Formula
  desc "."
  homepage "https://miscord.win/"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/miscord-dev/annict-epgstation-connector/releases/download/v0.4.0/annict-epgstation-connector_Darwin_arm64.tar.gz"
      sha256 "7ceb52ce61f2b7e988b4a3d052df11d8136b5b5826e457f72a6b87e266d6c9b1"

      def install
        bin.install "annict-epgstation-connector"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/miscord-dev/annict-epgstation-connector/releases/download/v0.4.0/annict-epgstation-connector_Darwin_x86_64.tar.gz"
      sha256 "321b896d39dc01fec354ed824e60f5a3ec6c93927aa8ad892dedc65e111bb039"

      def install
        bin.install "annict-epgstation-connector"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/miscord-dev/annict-epgstation-connector/releases/download/v0.4.0/annict-epgstation-connector_Linux_x86_64.tar.gz"
      sha256 "875c08425fa9e7fb3c30af74ad83c532fb3b4d4b604d770fe6fd3e65ae21dd68"

      def install
        bin.install "annict-epgstation-connector"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/miscord-dev/annict-epgstation-connector/releases/download/v0.4.0/annict-epgstation-connector_Linux_arm64.tar.gz"
      sha256 "0b4e266f5058a769d3cade1ac90d134283bfb5ddd3eb1780eaa5f5cba3203af0"

      def install
        bin.install "annict-epgstation-connector"
      end
    end
  end

  test do
    system "#{bin}/annict-epgstation-connector -h"
  end
end
