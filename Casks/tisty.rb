cask "tisty" do
  version "0.7.1"
  sha256 "d85e8fcc5e419f7ca798d65327aa448db84e096624ac5e7e50822625be3381fe"

  url "https://github.com/rgdevment/Tisty/releases/download/v0.7.1/tisty-installer-0.7.1-macos-universal.dmg"
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
