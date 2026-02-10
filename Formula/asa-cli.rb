class AsaCli < Formula
  desc "CLI for the Apple Search Ads Campaign Management API v5"
  homepage "https://github.com/TrebuhS/asa-cli"
  url "https://github.com/TrebuhS/asa-cli/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "3a784b67a5baeeb73a603df3e03097cf3d2a12dd52a0e286dc5776dd4b470c92"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match "Apple Search Ads", shell_output("#{bin}/asa-cli --help")
    assert_match "configure", shell_output("#{bin}/asa-cli --help")
  end
end
