class Transcribe < Formula
  desc "Transcribe CLI"
  homepage "https://github.com/kantacky/transcribe"
  version "0.1.0"

  depends_on macos: :tahoe # Package.swift の .macOS(.v26) に合わせる

  on_arm do
    url "https://github.com/kantacky/transcribe/releases/download/#{version}/transcribe-#{version}-arm64.tar.gz"
    sha256 "39a326a54ec3380df272984f26502728507ae3bfc52273f65854ce7c74a0b952"
  end

  def install
    bin.install "TranscribeCLI" => "transcribe"
  end

  test do
    assert_match "transcribe", shell_output("#{bin}/transcribe --help")
  end
end
