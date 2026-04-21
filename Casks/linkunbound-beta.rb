cask "linkunbound-beta" do
  version "1.1.0-beta.1"
  sha256 "e66e8cf4d16bfd1c71f24fd1d4fc7210ea10956a23a4352291785af1ddba1398"

  url "https://github.com/rgdevment/LinkUnbound/releases/download/v1.1.0-beta.1/LinkUnbound_1.1.0-beta.1_universal.dmg"
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
