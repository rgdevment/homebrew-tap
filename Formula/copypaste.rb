class Copypaste < Formula
  desc "Clipboard history manager"
  homepage "https://github.com/rgdevment/CopyPaste"
  version "2.1.4"

  on_linux do
    url "https://github.com/rgdevment/CopyPaste/releases/download/v2.1.4/CopyPaste_2.1.4_amd64.deb"
    sha256 "a184effb0c0e75bfe1c64f1b8cdf6b75887a804449e8d1fe1780c9f48126765e"
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
