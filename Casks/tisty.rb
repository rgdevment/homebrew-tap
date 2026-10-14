cask "tisty" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.30.2"
  sha256 arm:   "7e36849529a9000c0965576141542784bb0957e7fe5859c2680aa3ae709398e6",
         intel: "cf0ba85a015aa94ab2198fe0d648541d5eafb65bd5e7875bad6f9960254c353a"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.30.2/tisty-installer-1.30.2-macos-#{arch}.dmg"
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
