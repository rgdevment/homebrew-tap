cask "linkunbound-beta" do
  version "1.1.0-beta.2"
  sha256 "5d07ed7a6ac1ced904b174684f23718f9d8231dd53622611bdaa23d8f79e852f"

  url "https://github.com/rgdevment/LinkUnbound/releases/download/v1.1.0-beta.2/LinkUnbound_1.1.0-beta.2_universal.dmg"
  name "LinkUnbound"
  desc "Smart browser router for HTTP(S) links (beta)"
  homepage "https://github.com/rgdevment/LinkUnbound"

  depends_on macos: ">= :ventura"

  app "LinkUnbound.app"

  zap trash: [
    "~/Library/Application Support/com.rgdevment.linkunbound",
    "~/Library/Preferences/com.rgdevment.linkunbound.plist",
  ]
end
