class TistyCli < Formula
  desc "Command line for Tisty: maintenance, and the door for an assistant"
  homepage "https://www.tisty.app/"
  url "https://github.com/rgdevment/Tisty/releases/download/v1.30.0/tisty-cli-1.30.0-macos-universal.tar.gz"
  version "1.30.0"
  sha256 "bfcac0a158d68839c03025db82581d6198b7233273f2b08b39b6bc1c3a518138"
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
