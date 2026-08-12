cask "tisty-beta" do
  version "0.2.0-rc2"
  sha256 "31f531324403b31ad6c0da078474c1a861fd275e19840fa595e3bd8cf436adb7"

  url "https://github.com/rgdevment/Tisty/releases/download/v0.2.0-rc2/Tisty-0.2.0-rc2-macos-universal.dmg"
  name "Tisty"
  desc "Local, private task manager whose archive is the point (beta)"
  homepage "https://github.com/rgdevment/Tisty"

  conflicts_with cask: "tisty"
  depends_on macos: :ventura

  app "Tisty.app"

  # The command line travels inside the app; Settings puts it within
  # reach. The tisty-cli formula is for whoever wants only that.
  zap trash: [
    "~/Library/Application Support/dev.rgdevment.tisty",
    "~/Library/Caches/dev.rgdevment.tisty",
  ]
end
