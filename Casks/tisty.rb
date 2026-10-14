cask "tisty" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.30.1"
  sha256 arm:   "7e181927647c2e210f7c2497890a0e88ad78d77544e8f3b10e02d37fe5d75c22",
         intel: "0deccfb465da939b0a62c50aa36e82cc13c4561c159c0d109cef12af5aab8363"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.30.1/tisty-installer-1.30.1-macos-#{arch}.dmg"
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
