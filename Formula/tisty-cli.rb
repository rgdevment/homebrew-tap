class TistyCli < Formula
  desc "Command line for Tisty, the local task manager"
  homepage "https://github.com/rgdevment/Tisty"
  license "AGPL-3.0-only"
  version "1.13.0"

  # The app carries this same binary, so having both is having two.
  conflicts_with formula: "tisty-cli-beta"

  # Linux is a phase of its own and is not built yet.
  on_macos do
    url "https://github.com/rgdevment/Tisty/releases/download/v1.13.0/tisty-cli-1.13.0-macos-universal.tar.gz"
    sha256 "70eb8d313bcdaee741ef92703c0713692f53e5a1566a7329910fdf2acecc0d7c"
  end

  def install
    bin.install "tisty"
  end

  test do
    assert_match "tisty", shell_output("#{bin}/tisty --version")
  end
end
