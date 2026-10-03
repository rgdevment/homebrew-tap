cask "linkunbound" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.4.1"
  sha256 arm:   "ef4cd2f5d6b59401205d10840b76042f671c8084ccf27b82022e60ddd7a3a8ad",
         intel: "a9fb360fb3c01bf65319192aca825fb3bb4152c0f987c288af21d34f7919f90b"

  url "https://github.com/rgdevment/LinkUnbound/releases/download/v2.4.1/linkunbound-installer-2.4.1-macos-#{arch}.dmg"
  name "LinkUnbound"
  desc "Browser picker that asks which browser opens each link"
  homepage "https://rgdevment.com/linkunbound/"

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
