cask "tisty" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.32.1"
  sha256 arm:   "1955b983d73ca36c4e838ffb5d763167aad0cd726d36ca31c2a7536152efe9d5",
         intel: "7272d2b595f225630fc1a46314603f30820dbc8074a805f7d5b184819f60eea6"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.32.1/tisty-installer-1.32.1-macos-#{arch}.dmg"
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
