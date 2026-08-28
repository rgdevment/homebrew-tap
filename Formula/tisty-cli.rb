class TistyCli < Formula
  desc "Command line for Tisty, the local task manager"
  homepage "https://github.com/rgdevment/Tisty"
  license "AGPL-3.0-only"
  version "0.13.0"

  # The app carries this same binary, so having both is having two.
  conflicts_with formula: "tisty-cli-beta"

  # Linux is a phase of its own and is not built yet.
  on_macos do
    url "https://github.com/rgdevment/Tisty/releases/download/v0.13.0/tisty-cli-0.13.0-macos-universal.tar.gz"
    sha256 "5d9411fa8d4d4ee4c450a3ca85962af5d95d0224bd6fe88ce4ebda25a12c41b3"
  end

  def install
    bin.install "tisty"
  end

  test do
    assert_match "tisty", shell_output("#{bin}/tisty --version")
  end
end
