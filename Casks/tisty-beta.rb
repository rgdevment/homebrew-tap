cask "tisty-beta" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.24.0-rc.3"
  sha256 arm:   "b73f04ea8f6cc46dc4a1b3d98ed1605131cbc304f732b9cc3b52fdc9c0fb6929",
         intel: "2e1baedad6cb8a22b26c098adfa7f3ecd9acf92379033dacde3f8b99e13c5341"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.24.0-rc.3/tisty-installer-1.24.0-rc.3-macos-#{arch}.dmg"
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
