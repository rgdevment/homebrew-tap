cask "linkunbound" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.11.0"
  sha256 arm:   "82aa3dc26b6ac267ac8a84c02d4efe1b58eca950bb51475d2e4cbf0489b546d2",
         intel: "4adce7939cbd512286a318363c4c2e6cac4f39a611959ff16e0dfcfd0b4cfc6c"

  url "https://github.com/rgdevment/LinkUnbound/releases/download/v2.11.0/linkunbound-installer-2.11.0-macos-#{arch}.dmg"
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
