cask "linkunbound" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.10.0"
  sha256 arm:   "73e2bfa9bb7d242581a497a6837122d0d6d887835a5aa793617dd615ea5e49ab",
         intel: "b4987eeb5e707d8858442838bbfe45fd8b3bef2bfbaacceff1ae0699b1b1b5e4"

  url "https://github.com/rgdevment/LinkUnbound/releases/download/v2.10.0/linkunbound-installer-2.10.0-macos-#{arch}.dmg"
  name "LinkUnbound"
  desc "Browser picker that asks which browser opens each link"
  homepage "https://www.linkunbound.app"

  auto_updates true

  conflicts_with cask: "linkunbound-beta"
  depends_on macos: :ventura

  app "LinkUnbound.app"

  uninstall script: {
              executable:   "#{appdir}/LinkUnbound.app/Contents/MacOS/linkunbound-settings",
              args:         ["--unregister"],
              must_succeed: false,
            },
            quit:   "dev.rgdevment.linkunbound"

  zap trash: [
    "~/Library/Application Support/LinkUnbound",
    "~/Library/Preferences/dev.rgdevment.linkunbound.plist",
    "~/Library/Preferences/com.rgdevment.linkunbound.plist",
    "~/Library/Saved Application State/dev.rgdevment.linkunbound.savedState",
    "~/Library/Saved Application State/com.rgdevment.linkunbound.savedState",
  ]
end
