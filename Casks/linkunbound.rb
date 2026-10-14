cask "linkunbound" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.6.0"
  sha256 arm:   "eef9d60cdecddc9412f5f03ebc6a37b147cf532189e3060bd92a7a85f8ce7d9b",
         intel: "aea466f53748bb7ce62d30669185311b1be5885ebedc60a0fb2f16444c51690b"

  url "https://github.com/rgdevment/LinkUnbound/releases/download/v2.6.0/linkunbound-installer-2.6.0-macos-#{arch}.dmg"
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
