class TistyCliBeta < Formula
  desc "Command line for Tisty: maintenance, and the door for an assistant (beta)"
  homepage "https://rgdevment.com/tisty/"
  url "https://github.com/rgdevment/Tisty/releases/download/v1.24.0-rc.3/tisty-cli-1.24.0-rc.3-macos-universal.tar.gz"
  version "1.24.0-rc.3"
  sha256 "4e13add079c8c8432bd24dca1a346a01b1cd2fa0c2f0d025bdddd0941ab9b585"
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
