cask "tisty" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.23.1"
  sha256 arm:   "6f45f3321f1bb5ef50026f66036d13fbf6e561f72ace0b522f0f89d29c496315",
         intel: "191d36e76f9c28596bdd59039d20b2dd339895b70f927c641611ca1dda22c01b"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.23.1/tisty-installer-1.23.1-macos-#{arch}.dmg"
  name "Tisty"
  desc "Notes, documents and tasks, all local, no subscription, no telemetry"
  homepage "https://rgdevment.com/tisty/"

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
