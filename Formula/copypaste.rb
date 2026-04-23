class Copypaste < Formula
  desc "Clipboard history manager"
  homepage "https://github.com/rgdevment/CopyPaste"
  version "2.2.5"

  on_linux do
    url "https://github.com/rgdevment/CopyPaste/releases/download/v2.2.5/CopyPaste_2.2.5_amd64.deb"
    sha256 "0e55f3d0664f7580ee2eb3eb449897bdfa12b472c6a3cfc68dd66cead629caf4"
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
