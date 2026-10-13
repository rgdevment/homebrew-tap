cask "tisty-beta" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.30.0-rc.2"
  sha256 arm:   "a5dca2832022f99ccdfdf680332eed27bdd83f48401d4de773f6723130de294f",
         intel: "9030114b3a3e34ee57f8ab157fbbcd9c068aef0c92a2d99d40ec52b2a7f6d883"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.30.0-rc.2/tisty-installer-1.30.0-rc.2-macos-#{arch}.dmg"
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
