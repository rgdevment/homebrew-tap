class CopypasteLinux < Formula
  desc "Clipboard history manager"
  homepage "https://github.com/rgdevment/CopyPaste"
  license "GPL-3.0-only"
  version "2.9.0"

  on_linux do
    url "https://github.com/rgdevment/CopyPaste/releases/download/v2.9.0/CopyPaste_2.9.0_amd64.deb"
    sha256 "330efb39aa6560511be57527fdad6c5c23e3780be2b4c5abd778c4d66eb69019"
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
