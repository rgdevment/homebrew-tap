cask "linkunbound-beta" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.7.0-rc.1"
  sha256 arm:   "1f5886e791ef362d895e841c493ee0e2f749d18b01d11c211b807b6c2d1dc24f",
         intel: "6f98768c988c03a160bf51606b53ed5b497e51a54f1b778a7db7ed46d02769ac"

  url "https://github.com/rgdevment/LinkUnbound/releases/download/v2.7.0-rc.1/linkunbound-installer-2.7.0-rc.1-macos-#{arch}.dmg"
  name "LinkUnbound"
  desc "Browser picker that asks which browser opens each link (beta)"
  homepage "https://www.linkunbound.app"

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
