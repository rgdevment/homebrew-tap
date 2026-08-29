cask "tisty" do
  version "1.0.0"
  sha256 "bab4e99c936863bf76a111fd9f1f8a0a066fe646b0734cfd15976ebbcedd5521"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.0.0/tisty-installer-1.0.0-macos-universal.dmg"
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
