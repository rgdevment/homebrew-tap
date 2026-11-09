cask "tisty" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.43.0"
  sha256 arm:   "4fa3256fe4b7c19029989d524c4447b429bad4760da7e3c66584238372238c89",
         intel: "6892c2cb84d05b9078b203bebbab9f072a6736e697653340f91ee6ccb9812c36"

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
