class TistyCli < Formula
  desc "Command line for Tisty, the local task manager"
  homepage "https://github.com/rgdevment/Tisty"
  license "AGPL-3.0-only"
  version "1.0.2"

  # The app carries this same binary, so having both is having two.
  conflicts_with formula: "tisty-cli-beta"

  # Linux is a phase of its own and is not built yet.
  on_macos do
    url "https://github.com/rgdevment/Tisty/releases/download/v1.0.2/tisty-cli-1.0.2-macos-universal.tar.gz"
    sha256 "f24e7056839802d62aadd15b5e22a904539b6206e1c31b2493bdd25566612660"
  end

  def install
    bin.install "tisty"
  end

  test do
    assert_match "tisty", shell_output("#{bin}/tisty --version")
  end
end
