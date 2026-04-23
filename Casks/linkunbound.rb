cask "linkunbound" do
  version "1.1.1"
  sha256 "41c6061f7b3b580abb28ff1d145ac8e7adc2284c323c4dcb5ba139589889630c"

  url "https://github.com/rgdevment/LinkUnbound/releases/download/v1.1.1/LinkUnbound_1.1.1_universal.dmg"
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
