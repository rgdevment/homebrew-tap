cask "tisty" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.25.0"
  sha256 arm:   "f3bd0507dcc923491c73876ea62de7ef1e6142f3a8a07bd20ccaa32acca481b0",
         intel: "cd937b55d7779ae3fcb390d80e5c8733f856e92369abd6d0376c4a40358d139c"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.25.0/tisty-installer-1.25.0-macos-#{arch}.dmg"
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
