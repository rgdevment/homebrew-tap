cask "linkunbound" do
  version "1.3.0"
  sha256 "83d7e31de939dde1fecfe3b62c9743fb3ade27659fa5c9296cbbae8f2138c642"

  url "https://github.com/rgdevment/LinkUnbound/releases/download/v1.3.0/LinkUnbound_1.3.0_universal.dmg"
  name "LinkUnbound"
  desc "Smart browser router for HTTP(S) links"
  homepage "https://github.com/rgdevment/LinkUnbound"

  depends_on macos: :ventura

  app "LinkUnbound.app"

  zap trash: [
    "~/Library/Application Support/com.rgdevment.linkunbound",
    "~/Library/Preferences/com.rgdevment.linkunbound.plist",
  ]
end
