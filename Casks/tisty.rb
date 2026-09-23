cask "tisty" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.21.0"
  sha256 arm:   "fbb3342547f711124855f3095dbe6a14e790346afc800ecaf27c98b88ffd0862",
         intel: "989cedd9a171565ab7b6888aff7c806028ade6a3d0b1c1f7e0efa2bbe32aaeb8"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.21.0/tisty-installer-1.21.0-macos-#{arch}.dmg"
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
