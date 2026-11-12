class Gitignore < Formula
  desc "List, search, and generate .gitignore templates"
  homepage "https://github.com/kantacky/gitignore-cli"
  url "https://github.com/kantacky/gitignore-cli/releases/download/#{version}/gitignore-#{version}-macos-arm64.tar.gz"
  version "0.1.0"
  sha256 "7318f5ea73128756ca8c74e71c5cfb5e461f556977cbf0a2298728cdb573862f"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64
  depends_on macos: :tahoe # Package.swift の .macOS(.v26) に合わせる

  def install
    bin.install "gitignore"
  end

  test do
    assert_match "gitignore", shell_output("#{bin}/gitignore --help")
  end
end
