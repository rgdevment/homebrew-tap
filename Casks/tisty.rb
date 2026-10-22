cask "tisty" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.32.0"
  sha256 arm:   "8c426d74b78264d5ccee2564d3b4b4cb16e759d19e49f9cf556058b3de387d9f",
         intel: "117036e31f77f0a3063b2f34c0cb2d97174c13da8887df92097f33344ce468df"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.32.0/tisty-installer-1.32.0-macos-#{arch}.dmg"
  name "Tisty"
  desc "Notes, documents and tasks, all local, no subscription, no telemetry"
  homepage "https://www.tisty.app/"

  auto_updates true

  conflicts_with cask: "tisty-beta"
  depends_on macos: :ventura

  caveats <<~TEXT
    Tisty needs macOS 13.3 or newer. Homebrew can only check for 13,
    so on 13.0 to 13.2 it installs and then will not open.
  TEXT

  app "Tisty.app"

  # The command line travels inside the app, as the assistant's door.
  zap trash: [
    "~/Library/Application Support/dev.rgdevment.tisty",
    "~/Library/Caches/dev.rgdevment.tisty",
  ]
end
