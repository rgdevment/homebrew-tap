class TistyCli < Formula
  desc "Command line for Tisty, the local task manager"
  homepage "https://github.com/rgdevment/Tisty"
  url "https://github.com/rgdevment/Tisty/releases/download/v1.15.1/tisty-cli-1.15.1-macos-universal.tar.gz"
  version "1.15.1"
  sha256 "8359473bce9acefc2fc717d273bfd4711d7e0a22b00c50900c168fd24eebd15b"
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
