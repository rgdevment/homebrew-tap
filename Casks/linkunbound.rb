cask "linkunbound" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.4.0"
  sha256 arm:   "8deea164d7da51e9477cfbbb02d3bd662eedc83eb8b77e4728e12cf9fe9ca102",
         intel: "49c88c5fe4ad89e923faa65084a75571d1bfff7ee9585304fe94a5234209c8ee"

  url "https://github.com/rgdevment/LinkUnbound/releases/download/v2.4.0/linkunbound-installer-2.4.0-macos-#{arch}.dmg"
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
