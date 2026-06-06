cask "linkunbound" do
  version "1.2.0"
  sha256 "fc8068943a5fbf48ac39ad9c100fef6467f8ba1a40e3e7004675c25bbea41297"

  url "https://github.com/rgdevment/LinkUnbound/releases/download/v1.2.0/LinkUnbound_1.2.0_universal.dmg"
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
