cask "tisty" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.34.0"
  sha256 arm:   "1604f6bb02c8c3bd0a1c0123534a3ab2cb3413884e91b8f858a2aac17678eb95",
         intel: "78446857e3b6590985d4ca8adaa4d17a71c02b456e28977c4d36df84c8393e63"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.34.0/tisty-installer-1.34.0-macos-#{arch}.dmg"
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
  binary "#{appdir}/Tisty.app/Contents/MacOS/tisty"

  # The command line travels inside the app, as the assistant's door.
  zap trash: [
    "~/Library/Application Support/dev.rgdevment.tisty",
    "~/Library/Caches/dev.rgdevment.tisty",
  ]
end
