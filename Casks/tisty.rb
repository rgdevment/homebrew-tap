cask "tisty" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.34.1"
  sha256 arm:   "3e2f447af06705c767017a344880d19ef175ebf9159e3dbd725bc8fce6038561",
         intel: "3ff0afdbff560b68fd7141473d57d801e07f9d08f9503c56812a14658fcfe1d2"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.34.1/tisty-installer-1.34.1-macos-#{arch}.dmg"
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
