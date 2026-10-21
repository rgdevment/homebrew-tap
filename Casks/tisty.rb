cask "tisty" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.31.6"
  sha256 arm:   "8e4c55327926ae8098da137093ec699cf6b66d50a44f18048693ffba88cfe8ea",
         intel: "0c2cb72b2593c6f9bb80984865f8b842ea6a43bbd13317d64af974685de3499c"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.31.6/tisty-installer-1.31.6-macos-#{arch}.dmg"
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
