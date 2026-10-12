class TistyCli < Formula
  desc "Command line for Tisty: maintenance, and the door for an assistant"
  homepage "https://rgdevment.com/tisty/"
  url "https://github.com/rgdevment/Tisty/releases/download/v1.25.1/tisty-cli-1.25.1-macos-universal.tar.gz"
  version "1.25.1"
  sha256 "8d76c44cdaacce4db0bc69f46a87532b9bd4e3f70c8a226babc476e48356ba8b"
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
