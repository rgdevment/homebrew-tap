cask "tisty" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.31.5"
  sha256 arm:   "7c5eda5417ed0b16c4db86968d0583061f68703c241f2dac97c4fcf10763ddf6",
         intel: "b8bfcb347b4302a1d35ef1d54ff2c0a4aad5f68927ba6366762ddd57fb8d3a2c"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.31.5/tisty-installer-1.31.5-macos-#{arch}.dmg"
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
