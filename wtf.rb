class Wtf < Formula
  desc "Wang Defa, your career leader"
  homepage "https://github.com/MR5356/wtf"
  license "Apache-2.0"
  version "1.1.0"
  url "https://github.com/MR5356/wtf/archive/refs/tags/PROD1.1.0_Ra30af30_T20240326.tar.gz"
  sha256 "ad6b6d31c052ee1d2e8f2f5721dcfad4b74357bd299e4c4e785a15d803341b78"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X github.com/MR5356/wtf/pkg/version.Version=#{version}"
    system "go", "build", "-ldflags", ldflags, "-o", bin/"wtf", "./cmd/wtf.go"
  end

  test do
    system "wtf", "--version"
  end
end
