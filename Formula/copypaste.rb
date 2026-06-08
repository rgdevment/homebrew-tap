class Copypaste < Formula
  desc "Clipboard history manager"
  homepage "https://github.com/rgdevment/CopyPaste"
  version "2.6.0"

  on_linux do
    url "https://github.com/rgdevment/CopyPaste/releases/download/v2.6.0/CopyPaste_2.6.0_amd64.deb"
    sha256 "ae7d715c3a095bb9ec6a87baea9a7ca4b65260d6e5c5bc5ca965e37c99d8e058"
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
