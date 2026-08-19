cask "tisty" do
  version "0.3.0"
  sha256 "79c056063e4039c66513ea7c817ff796a3e2b53bc284fc3a263de5564804843e"

  url "https://github.com/rgdevment/Tisty/releases/download/v0.3.0/tisty-installer-0.3.0-macos-universal.dmg"
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
