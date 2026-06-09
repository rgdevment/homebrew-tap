class Copypaste < Formula
  desc "Clipboard history manager"
  homepage "https://github.com/rgdevment/CopyPaste"
  version "2.6.2"

  on_linux do
    url "https://github.com/rgdevment/CopyPaste/releases/download/v2.6.2/CopyPaste_2.6.2_amd64.deb"
    sha256 "d67971e8cc30a38712608130e9b67196f516bd45a2cbf69b6f8dc53183be3155"
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
