cask "linkunbound" do
  version "1.1.0"
  sha256 "726bf54ae0ac19d63fe72effddff9a0efdd81673a70ec4d9dd35369312fc0d40"

  url "https://github.com/rgdevment/LinkUnbound/releases/download/v1.1.0/LinkUnbound_1.1.0_universal.dmg"
  name "LinkUnbound"
  desc "Smart browser router for HTTP(S) links"
  homepage "https://github.com/rgdevment/LinkUnbound"

  depends_on macos: ">= :ventura"

  app "LinkUnbound.app"

  zap trash: [
    "~/Library/Application Support/com.rgdevment.linkunbound",
    "~/Library/Preferences/com.rgdevment.linkunbound.plist",
  ]
end
