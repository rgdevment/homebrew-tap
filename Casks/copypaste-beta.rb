cask "copypaste-beta" do
  version "2.0.0-RC.1"
  sha256 "690a26303e596d59de086e9bc5060e4fcc32b35fbdc01dbf2b0dfa5f92223259"

  url "https://github.com/rgdevment/CopyPaste/releases/download/v2.0.0-RC.1/CopyPaste_2.0.0-RC.1_arm64.dmg"
  name "CopyPaste"
  desc "Clipboard history manager for macOS (beta)"
  homepage "https://github.com/rgdevment/CopyPaste"

  depends_on macos: ">= :ventura"
  arch arm_only: true

  app "CopyPaste.app"

  zap trash: [
    "~/Library/Application Support/com.rgdevment.copypaste",
  ]
end
