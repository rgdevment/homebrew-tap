cask "tisty-beta" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.24.0-rc.4"
  sha256 arm:   "242bb29eb971896ddd028321dfac4996ccee5c95d3dbf83fb12f28e8ce74f8c3",
         intel: "5215c220a81b0ebbb342bb204e36349280feec25c69cb83ccd6a6432b5ea92ea"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.24.0-rc.4/tisty-installer-1.24.0-rc.4-macos-#{arch}.dmg"
  name "Tisty"
  desc "Notes, documents and tasks, all local, no subscription, no telemetry (beta)"
  homepage "https://rgdevment.com/tisty/"

  auto_updates true

  conflicts_with cask: "tisty"
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
