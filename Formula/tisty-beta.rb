class TistyBeta < Formula
  desc "Local, private task manager whose archive is the point (beta)"
  homepage "https://github.com/rgdevment/Tisty"
  license "AGPL-3.0-only"
  version "0.1.0-rc3"

  conflicts_with "tisty", because: "both install the same binary"

  on_macos do
    url "https://github.com/rgdevment/Tisty/releases/download/v0.1.0-rc3/tisty-0.1.0-rc3-macos-universal.tar.gz"
    sha256 "bb8c40b5b3bc58508c6617855f89fcae86be7160ac8541639ad977c245b6a68c"
  end

  on_linux do
    url "https://github.com/rgdevment/Tisty/releases/download/v0.1.0-rc3/tisty-0.1.0-rc3-linux-x86_64.tar.gz"
    sha256 "2020633f1f1dae365dc0f9c4fe20de1d84ad549a09ffbdc3557eb2a02fb4ebc4"
  end

  def install
    bin.install "tisty"
  end

  test do
    assert_match "tisty", shell_output("#{bin}/tisty --version")
  end
end
