cask "tisty-beta" do
  version "0.2.0-rc3"
  sha256 "e6c4fadf7e2792ce7de3c7b40b5b409b9e9ace04dcd38df75ef4747aa82f4fa4"

  url "https://github.com/rgdevment/Tisty/releases/download/v0.2.0-rc3/tisty-installer-0.2.0-rc3-macos-universal.dmg"
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
