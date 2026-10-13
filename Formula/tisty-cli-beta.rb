class TistyCliBeta < Formula
  desc "Command line for Tisty: maintenance, and the door for an assistant (beta)"
  homepage "https://rgdevment.com/tisty/"
  url "https://github.com/rgdevment/Tisty/releases/download/v1.30.0-rc.2/tisty-cli-1.30.0-rc.2-macos-universal.tar.gz"
  version "1.30.0-rc.2"
  sha256 "e13629eb11539dea98300d2116a95de5b21e9aa8bdd2aa4636b0ce1de26d2baa"
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
