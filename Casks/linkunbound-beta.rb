cask "linkunbound-beta" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.0.0-rc.2"
  sha256 arm:   "964b1e24a85469e1309ba74ea018aff64f12fc7f4cac5f047092162c8ca0857d",
         intel: "421bf57657e6fa4d09e5dcbd4f329a84903fada2a588f7f5b3f777ea78400e3b"

  url "https://github.com/rgdevment/LinkUnbound/releases/download/v2.0.0-rc.2/linkunbound-installer-2.0.0-rc.2-macos-#{arch}.dmg"
  name "LinkUnbound"
  desc "Browser picker that asks which browser opens each link (beta)"
  homepage "https://github.com/rgdevment/LinkUnbound"

  auto_updates true

  conflicts_with cask: "linkunbound"
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
