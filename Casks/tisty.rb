cask "tisty" do
  version "1.14.1"
  sha256 "3a30bd70ade3f847275f7e12d23f275fa174f866946ad39780a2ffe902a54742"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.14.1/tisty-installer-1.14.1-macos-universal.dmg"
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
