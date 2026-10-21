cask "tisty" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.31.4"
  sha256 arm:   "de9ff3b8563ccf21ca726ebae9e20bcb965c75b11b1a59d41507e7772319f11d",
         intel: "83cfb933b5c215e808405385fee455a379b214276410c8a48e765054675dc40e"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.31.4/tisty-installer-1.31.4-macos-#{arch}.dmg"
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
