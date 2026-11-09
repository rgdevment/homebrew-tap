cask "tisty" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.43.1"
  sha256 arm:   "7f1622364eaf15079c9b5a001661a86ef41529e6dd4a5a7468bcc7dc413b9fdb",
         intel: "a2d7343cb233c72167fdd44dd81de10ab84a4a0b1de67fcc437c671743b33721"

  url "https://github.com/rgdevment/Tisty/releases/download/v#{version}/tisty-installer-#{version}-macos-#{arch}.dmg"
  name "Tisty"
  desc "Notes, documents and tasks, all local, no subscription, no telemetry"
  homepage "https://www.tisty.app/"

  auto_updates true
  conflicts_with cask: "tisty-beta"
  depends_on macos: :ventura

  app "Tisty.app"
  binary "#{appdir}/Tisty.app/Contents/MacOS/tisty"

  uninstall quit:   "dev.rgdevment.tisty",
            signal: ["TERM", "dev.rgdevment.tisty"]

  # The command line travels inside the app, as the assistant's door.
  # Upgrades run uninstall too, so only zap takes the login item back.
  zap launchctl: "dev.rgdevment.tisty",
      trash:     [
        "~/Library/Application Support/tisty",
        "~/Library/Caches/dev.rgdevment.tisty",
        "~/Library/Caches/tisty",
        "~/Library/HTTPStorages/dev.rgdevment.tisty",
        "~/Library/Preferences/dev.rgdevment.tisty.plist",
        "~/Library/Saved Application State/dev.rgdevment.tisty.savedState",
        "~/Library/WebKit/dev.rgdevment.tisty",
      ]

  caveats do
    next if MacOS.full_version >= "13.3"

    <<~TEXT
      Tisty needs macOS 13.3 or newer, and this Mac has #{MacOS.full_version}.
      Update macOS from System Settings before opening Tisty.
    TEXT
  end
end
