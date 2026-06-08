class Copypaste < Formula
  desc "Clipboard history manager"
  homepage "https://github.com/rgdevment/CopyPaste"
  version "2.6.1"

  on_linux do
    url "https://github.com/rgdevment/CopyPaste/releases/download/v2.6.1/CopyPaste_2.6.1_amd64.deb"
    sha256 "06fed7e79f7d1dd74da1374e2194fd440b53878534e0df1bed0cda922bd55df0"
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
