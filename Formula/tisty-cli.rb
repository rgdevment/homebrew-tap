class TistyCli < Formula
  desc "Command line for Tisty: maintenance, and the door for an assistant"
  homepage "https://www.tisty.app/"
  url "https://github.com/rgdevment/Tisty/releases/download/v1.30.4/tisty-cli-1.30.4-macos-universal.tar.gz"
  version "1.30.4"
  sha256 "dca214c7b18795ee7efa9ff6ad564cf37761756c21ce2f32f5e449d963913a7d"
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
