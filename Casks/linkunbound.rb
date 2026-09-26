cask "linkunbound" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.3.0"
  sha256 arm:   "7d5dd39f64a22d80d23e43a5bb145d7a69c670fc73987a104e9b61f9dbc89f3e",
         intel: "ffa3a03d9659d840522b804875204d103841d3a913d6187201da6667510240fe"

  url "https://github.com/rgdevment/LinkUnbound/releases/download/v2.3.0/linkunbound-installer-2.3.0-macos-#{arch}.dmg"
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
