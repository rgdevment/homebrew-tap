cask "linkunbound" do
  version "1.2.1"
  sha256 "d160d74933e512219d7bef929f87eafc8ae1c2e99f5abe151da3d555ca6b794f"

  url "https://github.com/rgdevment/LinkUnbound/releases/download/v1.2.1/LinkUnbound_1.2.1_universal.dmg"
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
