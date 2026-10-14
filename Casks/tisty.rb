cask "tisty" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.30.0"
  sha256 arm:   "bc1044d2331d4bb2baa627bef09770b43e51f68fb9c81dba01c21f38b2838c1c",
         intel: "3641f6d1fa0f29e75c350ac10715be6fb9a3149423a4e540329cd3da9a4f48cf"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.30.0/tisty-installer-1.30.0-macos-#{arch}.dmg"
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
