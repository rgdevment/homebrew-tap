class TistyBeta < Formula
  desc "Local, private task manager whose archive is the point (beta)"
  homepage "https://github.com/rgdevment/Tisty"
  license "AGPL-3.0-only"
  version "0.1.0-rc2"

  conflicts_with "tisty", because: "both install the same binary"

  on_macos do
    url "https://github.com/rgdevment/Tisty/releases/download/v0.1.0-rc2/tisty-0.1.0-rc2-macos-universal.tar.gz"
    sha256 "2b976a001008c841a87ef195b9d0576144732352827f19a9a3c198b26d239ede"
  end

  on_linux do
    url "https://github.com/rgdevment/Tisty/releases/download/v0.1.0-rc2/tisty-0.1.0-rc2-linux-x86_64.tar.gz"
    sha256 "cd6b497eb69bd0c3d1a031810f0f0b4841093cd04636f2cde0938de922f194e1"
  end

  def install
    bin.install "tisty"
  end

  test do
    assert_match "tisty", shell_output("#{bin}/tisty --version")
  end
end
