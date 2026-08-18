cask "tisty" do
  version "0.2.1"
  sha256 "1e09c29d8e8fd0a7567ba1f731272ea0adc2790258f6f1fe75b38b50aaf63a91"

  url "https://github.com/rgdevment/Tisty/releases/download/v0.2.1/tisty-installer-0.2.1-macos-universal.dmg"
  name "Tisty"
  desc "Local, private task manager whose archive is the point"
  homepage "https://github.com/rgdevment/Tisty"

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
