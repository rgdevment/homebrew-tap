cask "tisty-beta" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.20.1-rc.1"
  sha256 arm:   "1073292f9b681e52065a84396c596afc255ced5033a214ab86ca4a18cd1e1d78",
         intel: "0dd1b7928638961c51763ccaca37313560b0fd9c9e6cb791bf788d61384e39fc"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.20.1-rc.1/tisty-installer-1.20.1-rc.1-macos-#{arch}.dmg"
  name "Tisty"
  desc "Notes, documents and tasks, all local, no subscription, no telemetry (beta)"
  homepage "https://github.com/rgdevment/Tisty"

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
