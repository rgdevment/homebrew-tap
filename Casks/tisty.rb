cask "tisty" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.18.0"
  sha256 arm:   "4c9962174438492532df0d7b28a2b1a760839a01495ded3ee05b4ff9f612a435",
         intel: "5f2ad5b6ee6d8e6af756729a9c7821f545bc18e8f8e7f04d1ecfebdd2d35909f"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.18.0/tisty-installer-1.18.0-macos-#{arch}.dmg"
  name "Tisty"
  desc "Notes, documents and tasks, all local, no subscription, no telemetry"
  homepage "https://github.com/rgdevment/Tisty"

  auto_updates true

  conflicts_with cask: "tisty-beta"
  depends_on macos: :ventura

  app "Tisty.app"

  # The command line travels inside the app, as the assistant's door.
  zap trash: [
    "~/Library/Application Support/dev.rgdevment.tisty",
    "~/Library/Caches/dev.rgdevment.tisty",
  ]
end
