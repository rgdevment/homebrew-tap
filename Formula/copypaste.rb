class Copypaste < Formula
  desc "Clipboard history manager"
  homepage "https://github.com/rgdevment/CopyPaste"
  version "2.7.0"

  on_linux do
    url "https://github.com/rgdevment/CopyPaste/releases/download/v2.7.0/CopyPaste_2.7.0_amd64.deb"
    sha256 "8e3c5b768f97a2003585ca70f051198e457d65c346de449c5f737a9b4639e8d0"
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
