cask "linkunbound-beta" do
  version "1.1.0-beta.3"
  sha256 "2cbc68a45e94a534bcdcded18394245db83f44c65b1d97186b909896eba867c0"

  url "https://github.com/rgdevment/LinkUnbound/releases/download/v1.1.0-beta.3/LinkUnbound_1.1.0-beta.3_universal.dmg"
  name "LinkUnbound"
  desc "Smart browser router for HTTP(S) links (beta)"
  homepage "https://github.com/rgdevment/LinkUnbound"

  depends_on macos: :ventura

  app "LinkUnbound.app"

  zap trash: [
    "~/Library/Application Support/com.rgdevment.linkunbound",
    "~/Library/Preferences/com.rgdevment.linkunbound.plist",
  ]
end
