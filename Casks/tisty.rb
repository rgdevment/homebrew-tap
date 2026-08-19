cask "tisty" do
  version "0.2.1"
  sha256 "3a61ab493e4948e4b95e00a7770b03135dc88b9278509643307cce63164b7c88"

  url "https://github.com/rgdevment/Tisty/releases/download/v0.2.1/tisty-installer-0.2.1-macos-universal.dmg"
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
