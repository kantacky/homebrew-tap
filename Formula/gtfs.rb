class Gtfs < Formula
  desc "GTFS CLI"
  homepage "https://github.com/kantacky/gtfs"
  version "0.1.0"

  depends_on macos: :tahoe # Package.swift の .macOS(.v26) に合わせる

  on_arm do
    url "https://github.com/kantacky/gtfs/releases/download/#{version}/gtfs-#{version}-arm64.tar.gz"
    sha256 "ca8698ed04f63bdb57850b8db23790cb5256ff208e2f2283cdd14734d8d8f65d"
  end

  def install
    bin.install "GTFSCLI" => "gtfs"
  end

  test do
    assert_match "gtfs", shell_output("#{bin}/gtfs --help")
  end
end
