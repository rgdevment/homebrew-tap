cask "tisty" do
  version "0.12.3"
  sha256 "0ac3f4d830b35b3b2bbf45a6fad10b07dd5b5ff37cd3b50c18d9a5f19ec4504b"

  url "https://github.com/rgdevment/Tisty/releases/download/v0.12.3/tisty-installer-0.12.3-macos-universal.dmg"
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
