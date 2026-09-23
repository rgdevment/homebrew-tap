cask "tisty" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.20.3"
  sha256 arm:   "b83e479354c0669a3156ea2e9ceb04f012e56a961a8df9129ef997097b9175d9",
         intel: "5b094de46820fb3e7b41c35f48b7ea8885038c4d1c2a8ccaa94619f8ebe4d4d3"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.20.3/tisty-installer-1.20.3-macos-#{arch}.dmg"
  name "Tisty"
  desc "Notes, documents and tasks, all local, no subscription, no telemetry"
  homepage "https://github.com/rgdevment/Tisty"

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
