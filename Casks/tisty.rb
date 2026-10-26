cask "tisty" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.36.0"
  sha256 arm:   "17453c10a60ad76e453aa8930829cc42f05f15de3395d8385e2e77747ff2499d",
         intel: "1549af23fdd63a5b5f65b78d14d039f07c68ce6d0394247560e8854f846857ef"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.36.0/tisty-installer-1.36.0-macos-#{arch}.dmg"
  name "Tisty"
  desc "Notes, documents and tasks, all local, no subscription, no telemetry"
  homepage "https://www.tisty.app/"

  auto_updates true

  conflicts_with cask: "tisty-beta"
  depends_on macos: :ventura

  caveats <<~TEXT
    Tisty needs macOS 13.3 or newer. Homebrew can only check for 13,
    so on 13.0 to 13.2 it installs and then will not open.
  TEXT

  app "Tisty.app"
  binary "#{appdir}/Tisty.app/Contents/MacOS/tisty"

  # The command line travels inside the app, as the assistant's door.
  zap trash: [
    "~/Library/Application Support/dev.rgdevment.tisty",
    "~/Library/Caches/dev.rgdevment.tisty",
  ]
end
