cask "tisty" do
  version "0.12.1"
  sha256 "dcf7eea9d31e0919cd64484e563f597b6e7d7219d92be1594323667c015e11ad"

  url "https://github.com/rgdevment/Tisty/releases/download/v0.12.1/tisty-installer-0.12.1-macos-universal.dmg"
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
