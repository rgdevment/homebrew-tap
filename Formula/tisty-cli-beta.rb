class TistyCliBeta < Formula
  desc "Command line for Tisty, the local task manager (beta)"
  homepage "https://github.com/rgdevment/Tisty"
  license "AGPL-3.0-only"
  version "0.2.0-rc2"

  # The app carries this same binary, so having both is having two.
  conflicts_with formula: "tisty-cli"

  # Linux is a phase of its own and is not built yet.
  on_macos do
    url "https://github.com/rgdevment/Tisty/releases/download/v0.2.0-rc2/tisty-0.2.0-rc2-macos-universal.tar.gz"
    sha256 "be87484fcca2d96660f9fa4c1683cdc46c7d7a4d3b175cd1b15aa15485cb4578"
  end

  def install
    bin.install "tisty"
  end

  test do
    assert_match "tisty", shell_output("#{bin}/tisty --version")
  end
end
