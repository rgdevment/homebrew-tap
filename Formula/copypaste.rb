class Copypaste < Formula
  desc "Clipboard history manager"
  homepage "https://github.com/rgdevment/CopyPaste"
  version "2.1.5"

  on_linux do
    url "https://github.com/rgdevment/CopyPaste/releases/download/v2.1.5/CopyPaste_2.1.5_amd64.deb"
    sha256 "ff41f9c7683efad12b4f359d42e6e8b74887609ca2cca184e7a4491db3ea724c"
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
