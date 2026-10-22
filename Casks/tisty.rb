cask "tisty" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.31.7"
  sha256 arm:   "e9e13b516664d1f72999af8efc5bfa6e1e24ba74d0dbe75ed80624e89979c7fe",
         intel: "011cf8f0a184ba78d33a3c8411342df35922c3fa9ad7745f86f7ae2233bb2b57"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.31.7/tisty-installer-1.31.7-macos-#{arch}.dmg"
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
