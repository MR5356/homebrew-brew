class Syncer < Formula
  desc "A multifunctional sync tool that supports docker registry, git repository, etc."
  homepage "https://github.com/MR5356/syncer"
  license "Apache-2.0"

  bottle: unneeded

  url "https://github.com/MR5356/syncer/releases/download/v1.0.0-release_build.81f53d4/syncer-darwin-amd64-build.81f53d4.tar.gz"
  sha256 x86_64: "3489ee2e1dc47aada289d3c3e2d18db3f7a24f3d8f00c7f248da3c3f13b21751"

  url "https://github.com/MR5356/syncer/releases/download/v1.0.0-release_build.81f53d4/syncer-darwin-arm64-build.81f53d4.tar.gz"
  sha256 arm64: "f012dfa0c5f14eb5c3d576b928a3624108a9d1b06627cad27fc45e5addc5b0a0"

  def install
    bin.install "syncer"
  end

  test do
    system "false"
  end
end
