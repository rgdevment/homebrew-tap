cask "linkunbound" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.7.0"
  sha256 arm:   "5a1f46f556292c29b45e9dafaa3fc87d4fcb682273a47f310b7cc0d72f35990d",
         intel: "fd48142d27ec88b72bd825e821a47b24b81e9202b72fab3e6167fbf0fed16055"

  url "https://github.com/rgdevment/LinkUnbound/releases/download/v2.7.0/linkunbound-installer-2.7.0-macos-#{arch}.dmg"
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
