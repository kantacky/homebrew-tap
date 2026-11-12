class Gitignore < Formula
  desc "List, search, and generate .gitignore templates"
  homepage "https://github.com/kantacky/gitignore-cli"
  url "https://github.com/kantacky/gitignore-cli/releases/download/0.1.2/gitignore-0.1.2-macos-arm64.tar.gz"
  version "0.1.2"
  sha256 "218dcadeeeaf2c95dff7c00c5e930df12d3e5f3a2d83a14c4f0a197a04861735"
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
