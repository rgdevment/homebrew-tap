cask "linkunbound" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.12.0"
  sha256 arm:   "061abb493a4badcc9012c1395700729352f152cd5ded0f86653e226962f4a681",
         intel: "1f50d95187fab8d9a010a050773508f15fd61c26e8f5dc4923e898c30953af13"

  url "https://github.com/rgdevment/LinkUnbound/releases/download/v2.12.0/linkunbound-installer-2.12.0-macos-#{arch}.dmg"
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
