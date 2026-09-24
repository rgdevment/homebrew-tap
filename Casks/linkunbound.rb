cask "linkunbound" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.2.0"
  sha256 arm:   "96bc7a540bb1e66934c41a677a04ec6090ee6603efeb7cc818aa5f579682e7a4",
         intel: "f1ff0132b746378a44ae2fd26444820deacc828617606181152fa7a9d088c14f"

  url "https://github.com/rgdevment/LinkUnbound/releases/download/v2.2.0/linkunbound-installer-2.2.0-macos-#{arch}.dmg"
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
