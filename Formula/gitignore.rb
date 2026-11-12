class Gitignore < Formula
  desc "List, search, and generate .gitignore templates"
  homepage "https://github.com/kantacky/gitignore-cli"
  url "https://github.com/kantacky/gitignore-cli/releases/download/#{version}/gitignore-#{version}-macos-arm64.tar.gz"
  version "0.1.1"
  sha256 "ddb61b84cca9aff56006c4a551e333240e6c5f96944e9e1d353daefe6eba1f19"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :tahoe # Package.swift の .macOS(.v26) に合わせる

  def install
    bin.install "gitignore"
  end

  test do
    assert_match "gitignore", shell_output("#{bin}/gitignore --help")
  end
end
