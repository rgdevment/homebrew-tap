class Copypaste < Formula
  desc "Clipboard history manager"
  homepage "https://github.com/rgdevment/CopyPaste"
  version "2.2.1"

  on_linux do
    url "https://github.com/rgdevment/CopyPaste/releases/download/v2.2.1/CopyPaste_2.2.1_amd64.deb"
    sha256 "446cc77044d618af9187c8b4e708948a7717b30f97b464a6186930626c12dbe5"
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
