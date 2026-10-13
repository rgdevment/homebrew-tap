cask "tisty-beta" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.30.0-rc.1"
  sha256 arm:   "ae403d41052283ba46e8322568d68cb83202c74b4055c8584bd3156ad192d44b",
         intel: "96059c36010feea3dd1fe21d118717a6f866d812d59d8f03f99287ccbd53a9ee"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.30.0-rc.1/tisty-installer-1.30.0-rc.1-macos-#{arch}.dmg"
  name "Tisty"
  desc "Notes, documents and tasks, all local, no subscription, no telemetry (beta)"
  homepage "https://rgdevment.com/tisty/"

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
