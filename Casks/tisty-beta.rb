cask "tisty-beta" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.36.0-rc.4"
  sha256 arm:   "f869150a73783a76422c1b4eedd90a1a1954afdbd2105293c88d28039a6551a0",
         intel: "d61d3a597e98732d035211e0308078d19d259dff1991370a007b28aa436e5d1a"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.36.0-rc.4/tisty-installer-1.36.0-rc.4-macos-#{arch}.dmg"
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
