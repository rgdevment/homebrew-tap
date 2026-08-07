class CopypasteLinux < Formula
  desc "Clipboard history manager"
  homepage "https://github.com/rgdevment/CopyPaste"
  license "GPL-3.0-only"
  version "2.10.0"

  on_linux do
    url "https://github.com/rgdevment/CopyPaste/releases/download/v2.10.0/CopyPaste_2.10.0_amd64.deb"
    sha256 "845f38e1fe64c24ea19240fa882aaef5b4d7764d2cdeb3a5e2b70d31ca89e086"
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
