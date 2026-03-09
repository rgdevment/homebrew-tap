  cask "copypaste-beta" do
    version "2.0.0-RC.1"
    sha256 "7c7a656248f42e25f67d4bf03c9d423a30f75e7433121f86b35b4efb53f00448"

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
