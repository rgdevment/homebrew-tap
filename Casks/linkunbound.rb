cask "linkunbound" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.7.1"
  sha256 arm:   "526cfdebf9e28bcb91e3976dcbad1867b1705d72aae393b9fc408abcf0a50a0d",
         intel: "514dbe7a023167de240e9ea35f4d91bfcdf336dda901516533759aadfcfab21a"

  url "https://github.com/rgdevment/LinkUnbound/releases/download/v2.7.1/linkunbound-installer-2.7.1-macos-#{arch}.dmg"
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
