cask "tisty-beta" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.23.0-rc.1"
  sha256 arm:   "06abd1aab7e75ca69bbbfa16a2eabb6b597a810a885c0afd6f4d80eccc907d65",
         intel: "574791c6f832ae41134f1cc3f4b3327951a7a25b27ce07e27c345aeb432c9c5a"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.23.0-rc.1/tisty-installer-1.23.0-rc.1-macos-#{arch}.dmg"
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
