class TistyCliBeta < Formula
  desc "Command line for Tisty: maintenance, and the door for an assistant (beta)"
  homepage "https://github.com/rgdevment/Tisty"
  url "https://github.com/rgdevment/Tisty/releases/download/v1.20.1-rc.2/tisty-cli-1.20.1-rc.2-macos-universal.tar.gz"
  version "1.20.1-rc.2"
  sha256 "14e79a4d7884f64513126a92d0f478ce3c2594a1a4213785b85a91638633401b"
  license "AGPL-3.0-only"

  depends_on :macos

  # The app carries this same binary, so having both is having two.
  conflicts_with "tisty-cli", because: "both install the same tisty binary"

  def install
    bin.install "tisty"
  end

  test do
    assert_match "tisty", shell_output("#{bin}/tisty --version")
  end
end
