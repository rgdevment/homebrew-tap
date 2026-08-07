cask "linkunbound" do
  version "1.4.0"
  sha256 "b038f9b28b8e9b29278a48ff317195e9203c9110aec554f8decd60f804b0c5a9"

  url "https://github.com/rgdevment/LinkUnbound/releases/download/v1.4.0/LinkUnbound_1.4.0_universal.dmg"
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
