cask "linkunbound" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.4.3"
  sha256 arm:   "22c8c481179dc4ae4bee0269623f6826dc06945095e707aa2aaefcb16551be06",
         intel: "37bdf36432e533affa380a4969855490aa7833d2c9e1819adb7a16b631e6ecfb"

  url "https://github.com/rgdevment/LinkUnbound/releases/download/v2.4.3/linkunbound-installer-2.4.3-macos-#{arch}.dmg"
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
