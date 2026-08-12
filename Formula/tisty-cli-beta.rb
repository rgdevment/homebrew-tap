class TistyCliBeta < Formula
  desc "Command line for Tisty, the local task manager (beta)"
  homepage "https://github.com/rgdevment/Tisty"
  license "AGPL-3.0-only"
  version "0.2.0-rc3"

  # The app carries this same binary, so having both is having two.
  conflicts_with formula: "tisty-cli"

  # Linux is a phase of its own and is not built yet.
  on_macos do
    url "https://github.com/rgdevment/Tisty/releases/download/v0.2.0-rc3/tisty-cli-0.2.0-rc3-macos-universal.tar.gz"
    sha256 "fcf7da9e8757d76da20d66543281919ef3703352ab7e06d9e4f2d67b2283248f"
  end

  def install
    bin.install "tisty"
  end

  test do
    assert_match "tisty", shell_output("#{bin}/tisty --version")
  end
end
