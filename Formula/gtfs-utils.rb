# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://docs.brew.sh/rubydoc/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class GtfsUtils < Formula
  desc "CLI for the GTFS Utils"
  homepage "https://github.com/kantacky/gtfs-utils"
  url "https://github.com/kantacky/gtfs-utils/archive/refs/tags/0.0.1.tar.gz"
  sha256 "5a5680c7217eb8836e0e09a9c0ee3a3de63636c4ab38f6eaa3f244fc4d0a919d"

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
