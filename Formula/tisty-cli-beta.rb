class TistyCliBeta < Formula
  desc "Command line for Tisty: maintenance, and the door for an assistant (beta)"
  homepage "https://rgdevment.com/tisty/"
  url "https://github.com/rgdevment/Tisty/releases/download/v1.24.0-rc.2/tisty-cli-1.24.0-rc.2-macos-universal.tar.gz"
  version "1.24.0-rc.2"
  sha256 "4ba8635d33a919a989dc43c497cc861b5d37b7e46e73cde59c4b0a75434b6c49"
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
