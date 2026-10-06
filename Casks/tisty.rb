cask "tisty" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.24.0"
  sha256 arm:   "178b7b23e3f76ae9467ef573695362f4310b96ec7c7a384196f85a72e67482ea",
         intel: "03fbb8a0d075ed7b4cdafdc33359da07098adaff2e3218c56dc15a5a299709f4"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.24.0/tisty-installer-1.24.0-macos-#{arch}.dmg"
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
