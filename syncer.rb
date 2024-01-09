class Syncer < Formula
  desc "A multifunctional sync tool that supports docker registry, git repository, etc."
  homepage "https://github.com/MR5356/syncer"
  license "Apache-2.0"
  version "1.0.0"
  url "https://github.com/MR5356/syncer/archive/refs/tags/v1.0.0-release_build.81f53d4.tar.gz"
  sha256 "e8252140e5f051d2bddebcd38572bb0a791d37e64734c952c3e8386b789835b1"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X github.com/MR5356/syncer/pkg/version.Version=#{version}"
    system "go", "build", "-ldflags", ldflags, "-o", bin/"syncer", "./cmd/syncer"
  end

  test do
    system "false"
  end
end
