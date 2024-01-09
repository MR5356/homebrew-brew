class Syncer < Formula
  desc "A multifunctional sync tool that supports docker registry, git repository, etc."
  homepage "https://github.com/MR5356/syncer"
  license "Apache-2.0"
  version "1.0.0"
  url "https://github.com/MR5356/syncer/archive/refs/tags/v1.0.0-release_build.81f53d4.tar.gz"
  sha256 "f012dfa0c5f14eb5c3d576b928a3624108a9d1b06627cad27fc45e5addc5b0a0"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X github.com/MR5356/syncer/pkg/version.Version=#{version}"
    system "go", "build", ldflags, "-o", bin/"syncer"
  end

  test do
    system "false"
  end
end
