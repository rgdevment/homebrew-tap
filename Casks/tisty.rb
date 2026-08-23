cask "tisty" do
  version "0.8.0"
  sha256 "5d42da6b7f1652c6c607065d680328d34738d1288113d15390d240a9865b19b3"

  url "https://github.com/rgdevment/Tisty/releases/download/v0.8.0/tisty-installer-0.8.0-macos-universal.dmg"
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
