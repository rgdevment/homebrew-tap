cask "tisty" do
  version "1.8.1"
  sha256 "d8e9c8553329d8019eb4c735661980a17252baafeacaed7501846d06b4481c59"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.8.1/tisty-installer-1.8.1-macos-universal.dmg"
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
