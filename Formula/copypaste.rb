class Copypaste < Formula
  desc "Clipboard history manager"
  homepage "https://github.com/rgdevment/CopyPaste"
  version "2.2.4"

  on_linux do
    url "https://github.com/rgdevment/CopyPaste/releases/download/v2.2.4/CopyPaste_2.2.4_amd64.deb"
    sha256 "096a8a9363e33953f298b256d97b42a9537353e49b63bf8f293047931205d574"
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
