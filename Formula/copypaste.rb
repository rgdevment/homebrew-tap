class Copypaste < Formula
  desc "Clipboard history manager"
  homepage "https://github.com/rgdevment/CopyPaste"
  version "2.6.3"

  on_linux do
    url "https://github.com/rgdevment/CopyPaste/releases/download/v2.6.3/CopyPaste_2.6.3_amd64.deb"
    sha256 "3ddaa83efeaa91a4202065297254d74922575410ad8bf2e3d7af57ccfe524cc4"
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
