class Copypaste < Formula
  desc "Clipboard history manager"
  homepage "https://github.com/rgdevment/CopyPaste"
  version "2.4.1"

  on_linux do
    url "https://github.com/rgdevment/CopyPaste/releases/download/v2.4.1/CopyPaste_2.4.1_amd64.deb"
    sha256 "f043100407654adc74112b20df046626ccfcb792525868d64734de5af0b467c8"
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
