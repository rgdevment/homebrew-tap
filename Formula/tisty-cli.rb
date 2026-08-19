class TistyCli < Formula
  desc "Command line for Tisty, the local task manager"
  homepage "https://github.com/rgdevment/Tisty"
  license "AGPL-3.0-only"
  version "0.3.0"

  # The app carries this same binary, so having both is having two.
  conflicts_with formula: "tisty-cli-beta"

  # Linux is a phase of its own and is not built yet.
  on_macos do
    url "https://github.com/rgdevment/Tisty/releases/download/v0.3.0/tisty-cli-0.3.0-macos-universal.tar.gz"
    sha256 "dfaabbd954d5dbf53ec5123074cdace014b7e087d5e9394c0074d5622b20c590"
  end

  def install
    bin.install "tisty"
  end

  test do
    assert_match "tisty", shell_output("#{bin}/tisty --version")
  end
end
