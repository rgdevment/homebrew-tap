class TistyCli < Formula
  desc "Command line for Tisty: maintenance, and the door for an assistant"
  homepage "https://www.tisty.app/"
  url "https://github.com/rgdevment/Tisty/releases/download/v1.30.2/tisty-cli-1.30.2-macos-universal.tar.gz"
  version "1.30.2"
  sha256 "92aafa44f785674b17780f23b8311ea00592247118dac9fced9f9789ffaa06b8"
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
