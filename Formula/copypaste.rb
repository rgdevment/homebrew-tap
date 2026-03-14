class Copypaste < Formula
  desc "Clipboard history manager"
  homepage "https://github.com/rgdevment/CopyPaste"
  version "2.1.3"

  on_linux do
    url "https://github.com/rgdevment/CopyPaste/releases/download/v2.1.3/CopyPaste_2.1.3_amd64.deb"
    sha256 "0601884ea179f99132b94252d16d3f726529134aa39e6e67412a9cbb861cf094"
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
