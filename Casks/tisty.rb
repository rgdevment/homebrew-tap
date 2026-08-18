cask "tisty" do
  version "0.2.0"
  sha256 "3798557621955788910c4e97e1fd7384c38e3d45c5a9a9e47e1b4913c4c206bb"

  url "https://github.com/rgdevment/Tisty/releases/download/v0.2.0/tisty-installer-0.2.0-macos-universal.dmg"
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
