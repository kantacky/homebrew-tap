# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://docs.brew.sh/rubydoc/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class GtfsUtils < Formula
  desc "CLI for the GTFS Utils"
  homepage "https://github.com/kantacky/gtfs-utils"
  url "https://github.com/kantacky/gtfs-utils/archive/refs/tags/0.0.2.tar.gz"
  sha256 "6136b45ae17696f75090dc0d8b2a8a30c7659c777872a571798ce0a762b7d7c8"

  depends_on xcode: ["16.0", :build]

  uses_from_macos "swift" => :build

  def install
    args = if OS.mac?
      ["--disable-sandbox"]
    else
      ["--static-swift-stdlib"]
    end
    system "swift", "build", *args,
      "--configuration", "release",
      "--product", "gtfs-utils"
      bin.install ".build/release/gtfs-utils"
  end

  test do
    assert_match(version.to_s, shell_output("#{bin}/gtfs-utils --version"))
  end
end
