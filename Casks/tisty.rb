cask "tisty" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.31.0"
  sha256 arm:   "0dc67c10b323cf3132685ecc556637c40f8217104728107fa37b08bfc19bd77b",
         intel: "2094d14bb466d0b742c7db7f1898ef6bbee0cd19c793c11d8a0de51580a9c9ed"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.31.0/tisty-installer-1.31.0-macos-#{arch}.dmg"
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
