cask "tisty" do
  version "1.13.1"
  sha256 "90af197480dc16591dc3339d3c161e2df2c082ce487fc60b4af824578b7f3059"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.13.1/tisty-installer-1.13.1-macos-universal.dmg"
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
