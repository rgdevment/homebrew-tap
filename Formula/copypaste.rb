class Copypaste < Formula
  desc "Clipboard history manager"
  homepage "https://github.com/rgdevment/CopyPaste"
  version "2.1.5"

  on_linux do
    url "https://github.com/rgdevment/CopyPaste/releases/download/v2.1.5/CopyPaste_2.1.5_amd64.deb"
    sha256 "90e660dc54e7f050cff4b89725cbb18f1b6d75f337dee9c6ec8e03111424f72b"
  end

  bottle :unneeded

  def install
    system "ar", "x", cached_download
    system "tar", "xf", Dir["data.tar.*"].first
    libexec.install Dir["opt/copypaste/*"]
    bin.write_exec_script libexec/"copypaste"
  end

  def caveats
    "Requires an X11 session. On Wayland, global hotkey and auto-paste are unavailable."
  end

  test do
    assert_predicate bin/"copypaste", :exist?
  end
end
