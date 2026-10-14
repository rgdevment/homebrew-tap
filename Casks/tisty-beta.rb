cask "tisty-beta" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.30.0-rc.4"
  sha256 arm:   "6b627be6ea04d936770c4bd3639086331efac487d92745f386cd0039c93c5569",
         intel: "fb41ff63cfa811b1976727f49f45426af91bbbf601963d8a191f3f05fde70916"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.30.0-rc.4/tisty-installer-1.30.0-rc.4-macos-#{arch}.dmg"
  name "Tisty"
  desc "Notes, documents and tasks, all local, no subscription, no telemetry (beta)"
  homepage "https://rgdevment.com/tisty/"

  auto_updates true

  conflicts_with cask: "tisty"
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
