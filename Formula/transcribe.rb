class Transcribe < Formula
  desc "Transcribe audio files in real time and print to standard output"
  homepage "https://github.com/kantacky/transcribe"
  url "https://github.com/kantacky/transcribe/releases/download/0.2.0/transcribe-0.2.0-macos-arm64.tar.gz"
  version "0.2.0"
  sha256 "50949c8f01009ba54d4af5a23a75f42d8967e0d03d70f566bd052b5a1d44da3b"
  license :cannot_represent

  depends_on arch: :arm64
  depends_on macos: :tahoe

  def install
    bin.install "transcribe"
  end

  test do
    assert_match "transcribe", shell_output("#{bin}/transcribe --help")
  end
end
