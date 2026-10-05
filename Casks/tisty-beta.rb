cask "tisty-beta" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.24.0-rc.2"
  sha256 arm:   "fe48f9f36414664999a6b8d86d49aa82bf20375c4b3bcfe6e23a6a59f63e3d72",
         intel: "9cc078fae3f3d386344151b322540f449d003ba67696e5bc18762760886de9b1"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.24.0-rc.2/tisty-installer-1.24.0-rc.2-macos-#{arch}.dmg"
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
