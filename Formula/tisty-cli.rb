class TistyCli < Formula
  desc "Command line for Tisty: maintenance, and the door for an assistant"
  homepage "https://rgdevment.com/tisty/"
  url "https://github.com/rgdevment/Tisty/releases/download/v1.22.2/tisty-cli-1.22.2-macos-universal.tar.gz"
  version "1.22.2"
  sha256 "f88dbeb08aff001c6697f3bdc2105bb4b0f31bfcc673556e133467a1ec3b6003"
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
