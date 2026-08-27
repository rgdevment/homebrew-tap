cask "tisty" do
  version "0.9.0"
  sha256 "d83585bc76d39f692acb2f5f3ac42aec5456b3389f307f3eb03482921198f281"

  url "https://github.com/rgdevment/Tisty/releases/download/v0.9.0/tisty-installer-0.9.0-macos-universal.dmg"
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
