cask "tisty" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.31.3"
  sha256 arm:   "ac960ca524fbf93aa8d99ecf1b9704bf11447bd591e6e748cf5b68468c363fc8",
         intel: "82b4a1fd4685da528c94eb67617ad25b66a4a2ceb6341d94b261473d78100b0e"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.31.3/tisty-installer-1.31.3-macos-#{arch}.dmg"
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
