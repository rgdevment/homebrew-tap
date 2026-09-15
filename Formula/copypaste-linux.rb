class CopypasteLinux < Formula
  desc "Clipboard history manager"
  homepage "https://github.com/rgdevment/CopyPaste"
  url "https://github.com/rgdevment/CopyPaste/releases/download/v2.11.0/CopyPaste_2.11.0_amd64.deb"
  version "2.11.0"
  sha256 "0290d28d4abe47f3ea7f00452a4631dc27f6b2c7e1192a355f6b842f6edaedfd"
  license "GPL-3.0-only"

  # Kept on purpose: whoever installed it before v2.11.0 still needs a reinstall path.
  deprecate! date: "2026-08-27", because: "no longer ships Linux builds after v2.11.0"

  depends_on :linux

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
