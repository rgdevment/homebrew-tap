cask "tisty" do
  version "1.9.1"
  sha256 "5bf78d251d689491678de2f829739d2b28ae56d147af73cebb63c90be1875c5b"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.9.1/tisty-installer-1.9.1-macos-universal.dmg"
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
