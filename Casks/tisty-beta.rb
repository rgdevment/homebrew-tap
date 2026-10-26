cask "tisty-beta" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.36.0-rc.2"
  sha256 arm:   "32f9262489f0dbec148924d956e9252df15a488c216164b964e8657485085e2e",
         intel: "24f288591cc4d6f5a2158d04eb92263ae3382ae47095320c8c062fa20fd21c16"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.36.0-rc.2/tisty-installer-1.36.0-rc.2-macos-#{arch}.dmg"
  name "Tisty"
  desc "Notes, documents and tasks, all local, no subscription, no telemetry (beta)"
  homepage "https://www.tisty.app/"

  auto_updates true

  conflicts_with cask: "tisty"
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
