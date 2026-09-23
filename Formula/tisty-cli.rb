class TistyCli < Formula
  desc "Command line for Tisty: maintenance, and the door for an assistant"
  homepage "https://github.com/rgdevment/Tisty"
  url "https://github.com/rgdevment/Tisty/releases/download/v1.20.3/tisty-cli-1.20.3-macos-universal.tar.gz"
  version "1.20.3"
  sha256 "11623fc8c8a657e3f29e237c24fd41f728d9cad4d3ea91ade98c5221ecb471b2"
  license "AGPL-3.0-only"

  depends_on :macos

  # The app carries this same binary, so having both is having two.
  conflicts_with "tisty-cli-beta", because: "both install the same tisty binary"

  def install
    bin.install "tisty"
  end

  test do
    assert_match "tisty", shell_output("#{bin}/tisty --version")
  end
end
