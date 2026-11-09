cask "linkunbound" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.9.0"
  sha256 arm:   "edf493bc1189e8dda7ace83e2c8a0c5dac3c1a10ba3971a78ee7678e1ae95bc5",
         intel: "44a6b9afa5e5ed11f5e0dfdb78f7e0c160ae542abda8f0e84aa46458a6dde4cf"

  url "https://github.com/rgdevment/LinkUnbound/releases/download/v2.9.0/linkunbound-installer-2.9.0-macos-#{arch}.dmg"
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
