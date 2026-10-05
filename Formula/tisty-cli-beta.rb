class TistyCliBeta < Formula
  desc "Command line for Tisty: maintenance, and the door for an assistant (beta)"
  homepage "https://rgdevment.com/tisty/"
  url "https://github.com/rgdevment/Tisty/releases/download/v1.24.0-rc.1/tisty-cli-1.24.0-rc.1-macos-universal.tar.gz"
  version "1.24.0-rc.1"
  sha256 "e42909eee2e159d2c6bf66b573e97f004860eb0d5412e6f071598eb74c69875b"
  license "AGPL-3.0-only"

  depends_on :macos

  # The app carries this same binary, so having both is having two.
  conflicts_with "tisty-cli", because: "both install the same tisty binary"

  def install
    bin.install "tisty"
  end

  test do
    assert_match "tisty", shell_output("#{bin}/tisty --version")
  end
end
