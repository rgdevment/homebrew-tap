cask "tisty" do
  version "1.8.2"
  sha256 "6cad3e94e384b8f18145563eed31479a2cca5150809e1c522fccfe19ef7d2261"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.8.2/tisty-installer-1.8.2-macos-universal.dmg"
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
