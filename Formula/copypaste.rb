class Copypaste < Formula
  desc "Clipboard history manager"
  homepage "https://github.com/rgdevment/CopyPaste"
  version "2.4.0"

  on_linux do
    url "https://github.com/rgdevment/CopyPaste/releases/download/v2.4.0/CopyPaste_2.4.0_amd64.deb"
    sha256 "4726b12544dc7033a6984160e2084280c3a240d2403d124eb64a5057008f89f0"
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
