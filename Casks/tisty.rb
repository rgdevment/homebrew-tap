cask "tisty" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.31.1"
  sha256 arm:   "7ad7c51db0a48146bffbca3632f359b40e1fb0a0fad0b6db66589de8582efb1b",
         intel: "732c567f946f22c54bc8f76ba1783f8a30672a45ce51edcf12ac23007f0b3006"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.31.1/tisty-installer-1.31.1-macos-#{arch}.dmg"
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
