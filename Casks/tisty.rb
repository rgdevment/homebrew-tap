cask "tisty" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.31.2"
  sha256 arm:   "cae0a3921d80609e4efb59eb58b161137bc16cf4300507bdf4f3c69dc21c67fa",
         intel: "04dcb2927bca212e09dc72baf4c718cf14cebe2ec3ef12f5e99fdbd9ef498607"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.31.2/tisty-installer-1.31.2-macos-#{arch}.dmg"
  name "Tisty"
  desc "Notes, documents and tasks, all local, no subscription, no telemetry"
  homepage "https://www.tisty.app/"

  auto_updates true

  conflicts_with cask: "tisty-beta"
  depends_on macos: :ventura

  caveats <<~TEXT
    Tisty needs macOS 13.3 or newer. Homebrew can only check for 13,
    so on 13.0 to 13.2 it installs and then will not open.
  TEXT

  app "Tisty.app"

  # The command line travels inside the app, as the assistant's door.
  zap trash: [
    "~/Library/Application Support/dev.rgdevment.tisty",
    "~/Library/Caches/dev.rgdevment.tisty",
  ]
end
