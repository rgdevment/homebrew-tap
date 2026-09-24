cask "tisty" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.22.1"
  sha256 arm:   "9c113be9aac9fb27602af3381ffc9d5f25647340d25594b0f941891703362a91",
         intel: "5a09ba1a1bdc9d397e37372808c48cddbaa6eac64834450910c5250e7f031182"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.22.1/tisty-installer-1.22.1-macos-#{arch}.dmg"
  name "Tisty"
  desc "Notes, documents and tasks, all local, no subscription, no telemetry"
  homepage "https://github.com/rgdevment/Tisty"

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
