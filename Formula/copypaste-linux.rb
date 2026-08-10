class CopypasteLinux < Formula
  desc "Clipboard history manager"
  homepage "https://github.com/rgdevment/CopyPaste"
  license "GPL-3.0-only"
  version "2.11.0"

  on_linux do
    url "https://github.com/rgdevment/CopyPaste/releases/download/v2.11.0/CopyPaste_2.11.0_amd64.deb"
    sha256 "0290d28d4abe47f3ea7f00452a4631dc27f6b2c7e1192a355f6b842f6edaedfd"
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
