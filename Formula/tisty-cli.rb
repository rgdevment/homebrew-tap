class TistyCli < Formula
  desc "Command line for Tisty: maintenance, and the door for an assistant"
  homepage "https://www.tisty.app/"
  url "https://github.com/rgdevment/Tisty/releases/download/v1.30.1/tisty-cli-1.30.1-macos-universal.tar.gz"
  version "1.30.1"
  sha256 "af246e7e82f26358e0c97b0d9b6c94e3c4d6f0d7e85dcb36d280d707e4089bb4"
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
