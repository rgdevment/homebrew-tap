cask "tisty" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.30.5"
  sha256 arm:   "6ba4e5c64a10756ed8f2535bc7ba35d6201c206ce93b18901fd63b45f38627fd",
         intel: "c82713c731b22f2904e0cdc8d8c7af26374fa04c0a2b60a8e45056abe8a11ff7"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.30.5/tisty-installer-1.30.5-macos-#{arch}.dmg"
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
