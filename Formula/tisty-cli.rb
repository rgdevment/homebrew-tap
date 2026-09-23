class TistyCli < Formula
  desc "Command line for Tisty: maintenance, and the door for an assistant"
  homepage "https://github.com/rgdevment/Tisty"
  url "https://github.com/rgdevment/Tisty/releases/download/v1.20.1/tisty-cli-1.20.1-macos-universal.tar.gz"
  version "1.20.1"
  sha256 "6cedffae8cee5692b6f0c18f6ca6247e1638ebf6459a69380cc67a8085021dde"
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
