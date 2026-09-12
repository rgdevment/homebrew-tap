cask "tisty" do
  version "1.13.0"
  sha256 "9fcc5f3b771ce6a6a382227781583517fa8d02ee3b97553d11f0ce35c229c5ec"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.13.0/tisty-installer-1.13.0-macos-universal.dmg"
  name "Tisty"
  desc "Local, private task manager whose archive is the point"
  homepage "https://github.com/rgdevment/Tisty"

  auto_updates true

  conflicts_with cask: "tisty-beta"
  depends_on macos: :ventura

  app "Tisty.app"

  # The command line travels inside the app; Settings puts it within
  # reach. The tisty-cli formula is for whoever wants only that.
  zap trash: [
    "~/Library/Application Support/dev.rgdevment.tisty",
    "~/Library/Caches/dev.rgdevment.tisty",
  ]
end
