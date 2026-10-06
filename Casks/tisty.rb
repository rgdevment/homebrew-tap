cask "tisty" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.24.1"
  sha256 arm:   "6233020401f3b993e85b69c4959f749911fd75fd62b955bcd3360b2c4e85f5d0",
         intel: "fcab8bdd9b49c754dd72f547677ce160f9d5fa39f3e27d3cdf871d912e0bfed6"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.24.1/tisty-installer-1.24.1-macos-#{arch}.dmg"
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
