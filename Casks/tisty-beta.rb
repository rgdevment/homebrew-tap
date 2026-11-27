cask "tisty-beta" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.51.0-rc.2"
  sha256 arm:   "9882e6214911dc975b2be4e7e98206fa83ce53cd24c020010428699fd608905a",
         intel: "7978f1439cd3e2e9ee606753854046903017f45e30f5ac362c3c4986b50cc818"

  url "https://github.com/rgdevment/Tisty/releases/download/v#{version}/tisty-installer-#{version}-macos-#{arch}.dmg"
  name "Tisty"
  desc "Shared working memory for you and your AI agent, in local Markdown (beta)"
  homepage "https://www.tisty.app/"

  auto_updates true
  conflicts_with cask: "tisty"
  depends_on macos: :ventura

  app "Tisty.app"

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
