cask "tisty" do
  version "0.2.2"
  sha256 "1081ae8997b994ddc8401fc2de4539f5621230ef29973f2499f2ca083532a20e"

  url "https://github.com/rgdevment/Tisty/releases/download/v0.2.2/tisty-installer-0.2.2-macos-universal.dmg"
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
