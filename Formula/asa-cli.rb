class AsaCli < Formula
  desc "CLI for the Apple Search Ads Campaign Management API v5"
  homepage "https://github.com/TrebuhS/Apple-Search-Ads-CLI"
  url "https://github.com/TrebuhS/Apple-Search-Ads-CLI/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "1e7b7925db8dedc13cf33f2efb002b217148cbfaca46f6a8c60940cf12280741"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match "Apple Search Ads", shell_output("#{bin}/asa-cli --help")
  end
end
