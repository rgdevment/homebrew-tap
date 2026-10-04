cask "linkunbound" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.4.2"
  sha256 arm:   "97dff8d99d3626ecc8de3a273e75687b4e779f695b3aed42fc83d842dba29bf0",
         intel: "145249ca493bda7bd09af32389437853bfae6a106ab8b2ccd6df29bd1e0a73e3"

  url "https://github.com/rgdevment/LinkUnbound/releases/download/v2.4.2/linkunbound-installer-2.4.2-macos-#{arch}.dmg"
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
