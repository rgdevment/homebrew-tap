cask "tisty" do
  version "1.0.2"
  sha256 "a91a1b030e9722a76a8c19460984138b7fb4eb65c857c95910be5800c5e7ca48"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.0.2/tisty-installer-1.0.2-macos-universal.dmg"
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
