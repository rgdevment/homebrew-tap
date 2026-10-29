cask "tisty" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.39.1"
  sha256 arm:   "476be528cb87c0bf1d5b09924559eb1e29b69525ef996f00e80b82d51e8f2f1f",
         intel: "1f3ee7efcbade456cf8a194132d309dd57cd50fcb70b4dfbaec5b4072e5a180f"

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
