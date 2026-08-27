class TistyCli < Formula
  desc "Command line for Tisty, the local task manager"
  homepage "https://github.com/rgdevment/Tisty"
  license "AGPL-3.0-only"
  version "0.9.0"

  # The app carries this same binary, so having both is having two.
  conflicts_with formula: "tisty-cli-beta"

  # Linux is a phase of its own and is not built yet.
  on_macos do
    url "https://github.com/rgdevment/Tisty/releases/download/v0.9.0/tisty-cli-0.9.0-macos-universal.tar.gz"
    sha256 "9282193ec8f99e6f86a274d56793e93f4f33331322e5dbb64e4f06c9fb9e8a1b"
  end

  def install
    bin.install "tisty"
  end

  test do
    assert_match "tisty", shell_output("#{bin}/tisty --version")
  end
end
