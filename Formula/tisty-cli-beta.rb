class TistyCliBeta < Formula
  desc "Command line for Tisty: maintenance, and the door for an assistant (beta)"
  homepage "https://github.com/rgdevment/Tisty"
  url "https://github.com/rgdevment/Tisty/releases/download/v1.20.1-rc.1/tisty-cli-1.20.1-rc.1-macos-universal.tar.gz"
  version "1.20.1-rc.1"
  sha256 "44f5a692300d70f9e63ffd84a322c76c463afcf0c45c8b5f43602736519d0e4e"
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
