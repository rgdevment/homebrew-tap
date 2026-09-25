cask "tisty" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.23.0"
  sha256 arm:   "ec2d4add351305a2d442a08110307b3054f4eef89b1885df0a8e59521829b4fb",
         intel: "d6cd928eaf22a077cc9af2f6dedb5a00aabc23fb2939a04f3e27273fbaa78af2"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.23.0/tisty-installer-1.23.0-macos-#{arch}.dmg"
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
