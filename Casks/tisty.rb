cask "tisty" do
  version "1.2.0"
  sha256 "f696427ff2470aa546dbd1567f9307e20c0a279b84c2497c0b56ea51fee4ee3e"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.2.0/tisty-installer-1.2.0-macos-universal.dmg"
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
