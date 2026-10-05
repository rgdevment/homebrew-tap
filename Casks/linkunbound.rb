cask "linkunbound" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.5.0"
  sha256 arm:   "e4395821344194619f17d2a5b16d0be15b8b871d1cc3a5c1d49a1f2619dc7a4d",
         intel: "0100c3bbfa33c13da5ed8ba7dfab6a56f64d1e4076e5129955f1eb2aaa3ceeaf"

  url "https://github.com/rgdevment/LinkUnbound/releases/download/v2.5.0/linkunbound-installer-2.5.0-macos-#{arch}.dmg"
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
