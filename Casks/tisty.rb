cask "tisty" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.33.0"
  sha256 arm:   "e7262203bc118c6823967ba39640e8d48b09b8fafcd5b2892b24475b8a115f55",
         intel: "5e64de1169cbc58a3823d64a48f7873e9f8f9278ea02d481a84c4b36cf1e0a13"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.33.0/tisty-installer-1.33.0-macos-#{arch}.dmg"
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
