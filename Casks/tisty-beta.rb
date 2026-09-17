cask "tisty-beta" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.18.0-rc.1"
  sha256 arm:   "179827adc1940e9368e24ee9e5b48fcd5a1b69b8001d673c3310521d72e4a34c",
         intel: "fe78b136666f931b3cdd9e7831b4832f7c5bce714c9c0b4dd7649994af44aedd"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.18.0-rc.1/tisty-installer-1.18.0-rc.1-macos-#{arch}.dmg"
  name "Tisty"
  desc "Notes, documents and tasks, all local, no subscription, no telemetry (beta)"
  homepage "https://github.com/rgdevment/Tisty"

  auto_updates true

  conflicts_with cask: "tisty"
  depends_on macos: :ventura

  app "Tisty.app"

  # The command line travels inside the app, as the assistant's door.
  zap trash: [
    "~/Library/Application Support/dev.rgdevment.tisty",
    "~/Library/Caches/dev.rgdevment.tisty",
  ]
end
