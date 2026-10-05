cask "tisty-beta" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.24.0-rc.1"
  sha256 arm:   "9d4aa9f0bc17348fec018d12722bbd209eb0fdb205787a05632812336f752b40",
         intel: "653ccbf17cd1401b1e065c92cbf611cf9a2c67ef6e1e1aadf5daeedf63ce330b"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.24.0-rc.1/tisty-installer-1.24.0-rc.1-macos-#{arch}.dmg"
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
