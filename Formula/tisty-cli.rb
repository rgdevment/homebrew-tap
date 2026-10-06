class TistyCli < Formula
  desc "Command line for Tisty: maintenance, and the door for an assistant"
  homepage "https://rgdevment.com/tisty/"
  url "https://github.com/rgdevment/Tisty/releases/download/v1.24.2/tisty-cli-1.24.2-macos-universal.tar.gz"
  version "1.24.2"
  sha256 "1867ede23a7eea8c11fd9f97ea8327f3af9a98843b9a2f568d29c86006815d0b"
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
