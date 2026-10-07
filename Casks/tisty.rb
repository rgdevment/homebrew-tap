cask "tisty" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.24.4"
  sha256 arm:   "f1884d96963a451341ecd28b834b3046092ae3f291c655b32aa3436470f37136",
         intel: "5c0b4ba3d360748bb42992058a05b9c57ecf25351f024938647ec5fb7fc477e0"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.24.4/tisty-installer-1.24.4-macos-#{arch}.dmg"
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
