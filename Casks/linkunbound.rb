cask "linkunbound" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.8.0"
  sha256 arm:   "70d0a4af91113a86f09042384947ea163f6dd2352d08703c8988f03428732048",
         intel: "6cc7c93e93edb9c5c1069f35c752d6448fa9caf25fd4d93fb4c905660cb8f560"

  url "https://github.com/rgdevment/LinkUnbound/releases/download/v2.8.0/linkunbound-installer-2.8.0-macos-#{arch}.dmg"
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
