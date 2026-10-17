cask "linkunbound-beta" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.7.2-rc.1"
  sha256 arm:   "fd3f09e9e059a3a71be906f10361202445b642bcd93e0e341f5891f8f8264157",
         intel: "06620e927c568f9d7e86a2d82b2142a0d30f5518b7c630b27a5fe7d031551402"

  url "https://github.com/rgdevment/LinkUnbound/releases/download/v2.7.2-rc.1/linkunbound-installer-2.7.2-rc.1-macos-#{arch}.dmg"
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
