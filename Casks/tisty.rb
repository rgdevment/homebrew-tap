cask "tisty" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.22.2"
  sha256 arm:   "d960abb1f76fedb804a36d4ce975efe66c247a5162a17ed1d14cc70c39baa8c5",
         intel: "32ce9b747822350933ac51370433ebb0974f176b1d25a8bb6200f17bec32c957"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.22.2/tisty-installer-1.22.2-macos-#{arch}.dmg"
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
