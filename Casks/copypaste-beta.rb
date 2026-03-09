  cask "copypaste-beta" do
    version "2.0.0-RC.1"
    sha256 "09bdbe34f5ee3bdaf4487f3f758a1307ee5638a457eb8ca1272c021ae190901b"

    url "https://github.com/rgdevment/CopyPaste/releases/download/v2.0.0-RC.1/CopyPaste_2.0.0-RC.1_arm64.dmg"
    name "CopyPaste"
    desc "Clipboard history manager for macOS (beta)"
    homepage "https://github.com/rgdevment/CopyPaste"

    depends_on macos: ">= :ventura"

    on_arm do
      app "CopyPaste.app"
    end

    on_intel do
      odie "CopyPaste only supports Apple Silicon (ARM) Macs."
    end

    zap trash: [
      "~/Library/Application Support/com.rgdevment.copypaste",
    ]
  end
