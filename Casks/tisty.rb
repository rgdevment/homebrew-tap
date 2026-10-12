cask "tisty" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.25.1"
  sha256 arm:   "10af421bbf8de8f59866e5aec36a530c62d474780a8fd76be769bf29bc026e47",
         intel: "c84bed5ca93f6d999887db70235dffa339ba9164d3298d7469cfd63a863878d9"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.25.1/tisty-installer-1.25.1-macos-#{arch}.dmg"
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
