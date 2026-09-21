cask "linkunbound" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.0.1"
  sha256 arm:   "f23f6665a169e5ab584832229e5a251260689952d958fdc593a51351dc0b7c95",
         intel: "782d7df31c8619b99f814cb3cc909edaabc425ed90f26c6eefde48d993b2c1f3"

  url "https://github.com/rgdevment/LinkUnbound/releases/download/v2.0.1/linkunbound-installer-2.0.1-macos-#{arch}.dmg"
  name "LinkUnbound"
  desc "Browser picker that asks which browser opens each link"
  homepage "https://github.com/rgdevment/LinkUnbound"

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
