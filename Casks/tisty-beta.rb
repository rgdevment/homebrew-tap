cask "tisty-beta" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.36.0-rc.3"
  sha256 arm:   "840171ff56cb96775188e623ea53bf5a883ccd04c014417c5ca46612c4a3fc49",
         intel: "8d25f997ecbf71b8a01845c128f2293820e09a4c79c871a1c6f2e6a7a0805f82"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.36.0-rc.3/tisty-installer-1.36.0-rc.3-macos-#{arch}.dmg"
  name "Tisty"
  desc "Notes, documents and tasks, all local, no subscription, no telemetry (beta)"
  homepage "https://www.tisty.app/"

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
