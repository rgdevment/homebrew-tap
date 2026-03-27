class Copypaste < Formula
  desc "Clipboard history manager"
  homepage "https://github.com/rgdevment/CopyPaste"
  version "2.2.0"

  on_linux do
    url "https://github.com/rgdevment/CopyPaste/releases/download/v2.2.0/CopyPaste_2.2.0_amd64.deb"
    sha256 "95d1b9b2b36592909a0ac939f83667a8ab390080d076f590ba68c8c0eac59f8b"
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
