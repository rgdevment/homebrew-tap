cask "tisty" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.30.4"
  sha256 arm:   "1467bb3ddf3e5afc8309e936aa7d453429aaeaaddbf3a6f2e266bbd1d8fb7328",
         intel: "f105534a538db706542349e3d4e60589addce62ff1a928d40f81dddb63cf6f7c"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.30.4/tisty-installer-1.30.4-macos-#{arch}.dmg"
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
