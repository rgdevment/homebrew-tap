class TistyBeta < Formula
  desc "Local, private task manager whose archive is the point (beta)"
  homepage "https://github.com/rgdevment/Tisty"
  license "AGPL-3.0-only"
  version "0.2.0-rc1"

  conflicts_with "tisty", because: "both install the same binary"

  # Linux is a phase of its own and is not built yet.
  on_macos do
    url "https://github.com/rgdevment/Tisty/releases/download/v0.2.0-rc1/tisty-0.2.0-rc1-macos-universal.tar.gz"
    sha256 "d25b2ed98fcea64fbd006a656d3a888aa4a285530e9946cf29dac415f7bb7d6c"
  end

  def install
    bin.install "tisty"
  end

  test do
    assert_match "tisty", shell_output("#{bin}/tisty --version")
  end
end
