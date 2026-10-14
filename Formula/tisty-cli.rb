class TistyCli < Formula
  desc "Command line for Tisty: maintenance, and the door for an assistant"
  homepage "https://www.tisty.app/"
  url "https://github.com/rgdevment/Tisty/releases/download/v1.30.3/tisty-cli-1.30.3-macos-universal.tar.gz"
  version "1.30.3"
  sha256 "3948a4154766f7e9233f34a9cf59c78ad92a70c32eefb35c3a10ff2f41857ffc"
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
