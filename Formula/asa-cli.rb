class AsaCli < Formula
  desc "CLI for the Apple Search Ads Campaign Management API v5"
  homepage "https://github.com/TrebuhS/Apple-Search-Ads-CLI"
  url "https://github.com/TrebuhS/Apple-Search-Ads-CLI/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "3dda015def7e1c836df2e30d54b6ea9875303f9a8cce664a3132634b3cc9133c"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match "Apple Search Ads", shell_output("#{bin}/asa-cli --help")
  end
end
