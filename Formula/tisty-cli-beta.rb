class TistyCliBeta < Formula
  desc "Command line for Tisty: maintenance, and the door for an assistant (beta)"
  homepage "https://rgdevment.com/tisty/"
  url "https://github.com/rgdevment/Tisty/releases/download/v1.23.0-rc.1/tisty-cli-1.23.0-rc.1-macos-universal.tar.gz"
  version "1.23.0-rc.1"
  sha256 "84a2983a96081c24d9a850d00a210b615d08cc959cdb5040c0506c02a77912c3"
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
