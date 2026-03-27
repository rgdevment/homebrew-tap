class Copypaste < Formula
  desc "Clipboard history manager"
  homepage "https://github.com/rgdevment/CopyPaste"
  version "2.1.6"

  on_linux do
    url "https://github.com/rgdevment/CopyPaste/releases/download/v2.1.6/CopyPaste_2.1.6_amd64.deb"
    sha256 "64653e290edef00a949fedb72cb76673a04caced823eb1770b2486b0ba1d2f1e"
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
