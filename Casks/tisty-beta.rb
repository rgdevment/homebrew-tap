cask "tisty-beta" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.20.1-rc.2"
  sha256 arm:   "94766f15f448be3b4fd83402b96ab1684c2a011752c71538e9d53589906c78f8",
         intel: "1dbd44ee4dea9e5d39a1f8007c57513ae50d379f24ab40f178b59e53f7fdb55f"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.20.1-rc.2/tisty-installer-1.20.1-rc.2-macos-#{arch}.dmg"
  name "Tisty"
  desc "Notes, documents and tasks, all local, no subscription, no telemetry (beta)"
  homepage "https://github.com/rgdevment/Tisty"

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
