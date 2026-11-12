class Gtfs < Formula
  desc "Utilities for GTFS and GTFS-JP"
  homepage "https://github.com/kantacky/gtfs"
  url "https://github.com/kantacky/gtfs/releases/download/0.1.1/gtfs-0.1.1-macos-arm64.tar.gz"
  version "0.1.1"
  sha256 "0a2f46305746c9dddd5865df36e6181071a98164ad1583942c388483cb8fe571"

  depends_on arch: :arm64
  depends_on macos: :tahoe # Package.swift の .macOS(.v26) に合わせる

  def install
    bin.install "GTFSCLI" => "gtfs"
  end

  test do
    assert_match "gtfs", shell_output("#{bin}/gtfs --help")
  end
end
