class Wtf < Formula
  desc "Wang Defa, your career leader"
  homepage "https://github.com/MR5356/wtf"
  license "Apache-2.0"
  version "1.1.0"
  url "https://github.com/MR5356/wtf/archive/refs/tags/PROD1.1.0_R4d198bb_T20240329.tar.gz"
  sha256 "20f1c4ce0b991af9f9b8998fe69be89e1120da61d52b5b7e112e756377232829"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X github.com/MR5356/wtf/pkg/version.Version=#{version}"
    system "go", "build", "-ldflags", ldflags, "-o", bin/"wtf", "./cmd/wtf.go"
  end

  test do
    system "wtf", "--version"
  end
end
