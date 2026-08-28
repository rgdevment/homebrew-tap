cask "tisty" do
  version "0.12.2"
  sha256 "f84d5cfc115418901923a4464cc7d93681edc46d4054667363cc71999059aeb7"

  url "https://github.com/rgdevment/Tisty/releases/download/v0.12.2/tisty-installer-0.12.2-macos-universal.dmg"
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
