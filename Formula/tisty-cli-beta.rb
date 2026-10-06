class TistyCliBeta < Formula
  desc "Command line for Tisty: maintenance, and the door for an assistant (beta)"
  homepage "https://rgdevment.com/tisty/"
  url "https://github.com/rgdevment/Tisty/releases/download/v1.24.0-rc.4/tisty-cli-1.24.0-rc.4-macos-universal.tar.gz"
  version "1.24.0-rc.4"
  sha256 "011af02c61ab3625054cb22297b811e9124aacd005e2c984437144d199da883a"
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
