cask "linkunbound" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.0.2"
  sha256 arm:   "a0ae31efffbcfb2e5387b8df737b711013ce7849112fdf920801e2c4bb3d7d02",
         intel: "c632ea3884798003dba5646acd4d7e1a8953bb316985cf0d9e986b29bb973fdd"

  url "https://github.com/rgdevment/LinkUnbound/releases/download/v2.0.2/linkunbound-installer-2.0.2-macos-#{arch}.dmg"
  name "LinkUnbound"
  desc "Browser picker that asks which browser opens each link"
  homepage "https://github.com/rgdevment/LinkUnbound"

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
