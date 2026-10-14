cask "tisty" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.30.3"
  sha256 arm:   "9563cb489432445acb3d5055978e073a5c20498c566d10991e26526600793025",
         intel: "5d189d28f01ac195583a5a5d4f02fa75dea8cfdbe11ad7e861b26349a9c279ef"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.30.3/tisty-installer-1.30.3-macos-#{arch}.dmg"
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
