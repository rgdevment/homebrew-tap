cask "tisty" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.20.1"
  sha256 arm:   "746d7ce87db134fa663ccc82e3dee97809a1e3335beb08d4fdc136e00728d580",
         intel: "7f53bbcb6f3121d11c36fc2b25b2c24b0b0dcc730549f47fef3c07ede9ce9eec"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.20.1/tisty-installer-1.20.1-macos-#{arch}.dmg"
  name "Tisty"
  desc "Notes, documents and tasks, all local, no subscription, no telemetry"
  homepage "https://github.com/rgdevment/Tisty"

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
