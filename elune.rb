class SyncerDarwin < Formula
  desc "Elune一站式运维工具平台, DevOps Tools"
  homepage "https://docker.ac.cn"
  url "https://github.com/MR5356/elune-aio/releases/download/v1.1.0-dev-build.1/elune-backend-darwin-amd64.tar.gz"
  sha256 "fe8b6631f6369ca428a40c81e82624a0bac68b28c2ab19807865bff7d7b90a9e"
  license "Apache-2.0"

  def install
    bin.install "bin/elune-backend-darwin-amd64" => "elune"
  end

  test do
    system "false"
  end
end
