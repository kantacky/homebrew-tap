class Transcribe < Formula
  desc "Transcribe audio files in real time and print to standard output"
  homepage "https://github.com/kantacky/transcribe"
  url "https://github.com/kantacky/transcribe/releases/download/0.1.1/transcribe-0.1.1-macos-arm64.tar.gz"
  version "0.1.1"
  sha256 "85d800b2e53e34e6bd88281ad49a0d7c1082b9727d716855f78bade89b1a53f9"
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
