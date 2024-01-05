class Syncer < Formula
  desc "A multifunctional sync tool that supports docker registry, git repository, etc."
  homepage "https://github.com/MR5356/syncer"
  license "Apache-2.0"
  version "1.0.0"
  url "https://github.com/MR5356/syncer.git",
    tag: "v1.0.0-release_build.81f53d4",
    revision: "81f53d4ddce2fbb35181dd70edea91af5682a4f0"

  bottle :unneeded

  depends_on "go" => :build

  def install
    puts "params: #{args}"
    ldflags = "-s -w -X github.com/MR5356/syncer/pkg/version.Version=#{version}"
    system "go", "build", *std_go_args(output: bin/"syncer", ldflags: ldflags), "cmd/syncer/syncer.go"
  end

  test do
    version_out = shell_output("#{bin}/syncer version")
    assert_match version.to_s, version_out
  end
end
