class TistyCli < Formula
  desc "Command line for Tisty: maintenance, and the door for an assistant"
  homepage "https://github.com/rgdevment/Tisty"
  url "https://github.com/rgdevment/Tisty/releases/download/v1.22.1/tisty-cli-1.22.1-macos-universal.tar.gz"
  version "1.22.1"
  sha256 "92d7ba4e091df729bbcc18d35237329936805c3674b1090b2d0c0f62e7c84876"
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
