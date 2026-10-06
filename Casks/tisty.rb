cask "tisty" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.24.2"
  sha256 arm:   "e9280e05c4371649226e7c0e662973a1d2ba7dee43a5e288c466ae6fd3eb690b",
         intel: "360c589c3da275435c07348db8a9bb9c296a5de80169de24a2698b66b5653a68"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.24.2/tisty-installer-1.24.2-macos-#{arch}.dmg"
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
