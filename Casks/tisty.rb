cask "tisty" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.24.3"
  sha256 arm:   "5884f7e20cf4c761504419dc4cff7965f2b750deab22810e87e22374f6541e0f",
         intel: "7b918f7fda0e64a72871b4be3f7e5012b8b01217ea1464f13b27a955e080c08c"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.24.3/tisty-installer-1.24.3-macos-#{arch}.dmg"
  name "Tisty"
  desc "Notes, documents and tasks, all local, no subscription, no telemetry"
  homepage "https://rgdevment.com/tisty/"

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
