class TistyCli < Formula
  desc "Command line for Tisty: maintenance, and the door for an assistant"
  homepage "https://rgdevment.com/tisty/"
  url "https://github.com/rgdevment/Tisty/releases/download/v1.23.1/tisty-cli-1.23.1-macos-universal.tar.gz"
  version "1.23.1"
  sha256 "6dbafd48cc581de3ec6d84dc77d744d702466dcf1b4063cf5d788c088c41ce8a"
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
