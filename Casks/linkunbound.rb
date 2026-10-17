cask "linkunbound" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.7.2"
  sha256 arm:   "7e53c6a11dd1c76c1ef2b96f01fad985acad6b79dcb119f51babfd7696062127",
         intel: "3e6fa7d815f09623781ae801a7466e15881dacdb207b34039191edac700c64f0"

  url "https://github.com/rgdevment/LinkUnbound/releases/download/v2.7.2/linkunbound-installer-2.7.2-macos-#{arch}.dmg"
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
