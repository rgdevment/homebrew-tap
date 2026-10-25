cask "tisty" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.35.0"
  sha256 arm:   "eb43c710c0c301b0eec29820d37e09b597282967da35da4e777ad3284cf21432",
         intel: "8e97316fc4e3933cce8a60ae9a2d4a5150080bdbcb9bbd10e5097baad32066f7"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.35.0/tisty-installer-1.35.0-macos-#{arch}.dmg"
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
