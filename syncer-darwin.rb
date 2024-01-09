class SyncerDarwin < Formula
  desc "A multifunctional sync tool that supports docker registry, git repository, etc."
  homepage "https://github.com/MR5356/syncer"
  url "https://github.com/MR5356/syncer/releases/download/v1.0.0-release_build.81f53d4/syncer-darwin-amd64-build.81f53d4.tar.gz"
  sha256 "0757b1322ecddb3b8d8e35b24557d8860bfc5f338d91aa8b43cfcc2b90221eab"
  license "Apache-2.0"

  def install
    bin.install "syncer" => "syncer"
  end

  test do
    system "false"
  end
end
