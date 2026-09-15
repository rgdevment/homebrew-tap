class TistyCli < Formula
  desc "Command line for Tisty, the local task manager"
  homepage "https://github.com/rgdevment/Tisty"
  url "https://github.com/rgdevment/Tisty/releases/download/v1.15.0/tisty-cli-1.15.0-macos-universal.tar.gz"
  version "1.15.0"
  sha256 "d065cf45a4ebac235115babcd25b3afdc4f72cc01963919e185d72ccd14fe481"
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
