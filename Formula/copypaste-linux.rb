class CopypasteLinux < Formula
  desc "Clipboard history manager"
  homepage "https://github.com/rgdevment/CopyPaste"
  license "GPL-3.0-only"
  version "2.8.0"

  on_linux do
    url "https://github.com/rgdevment/CopyPaste/releases/download/v2.8.0/CopyPaste_2.8.0_amd64.deb"
    sha256 "29a7d5b80e72b654318341a2adeb0c0696510c60f68b252526a86c663030740b"
  end

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
