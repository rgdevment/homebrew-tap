class TistyCliBeta < Formula
  desc "Command line for Tisty, the local task manager (beta)"
  homepage "https://github.com/rgdevment/Tisty"
  url "https://github.com/rgdevment/Tisty/releases/download/v0.2.0-rc8/tisty-cli-0.2.0-rc8-macos-universal.tar.gz"
  version "0.2.0-rc8"
  sha256 "acecaec1a9bc2bf686d92bdafa17e7e6a1e27b0a036282a4e28fe3bc1e1117aa"
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
