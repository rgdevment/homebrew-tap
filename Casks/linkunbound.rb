cask "linkunbound" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.6.1"
  sha256 arm:   "a68025fe66f6984bf1f10fe1547f0596cd09cf5dfff813141517b6547a195c1a",
         intel: "37b03e294a6ed29b68cbca919bc4f978b6bfde6b4551c08f5409bc4e3c022227"

  url "https://github.com/rgdevment/LinkUnbound/releases/download/v2.6.1/linkunbound-installer-2.6.1-macos-#{arch}.dmg"
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
