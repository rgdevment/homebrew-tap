cask "linkunbound-beta" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.7.2-rc.2"
  sha256 arm:   "0a8dd3a44d4660062f606267f08d107725e78f6639e1bdb5ac3086cd30defb85",
         intel: "8656df1cf41f75c49a5225417816c90b683d628e2e04bff7f9acf2e02a356894"

  url "https://github.com/rgdevment/LinkUnbound/releases/download/v2.7.2-rc.2/linkunbound-installer-2.7.2-rc.2-macos-#{arch}.dmg"
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
