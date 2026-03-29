class Copypaste < Formula
  desc "Clipboard history manager"
  homepage "https://github.com/rgdevment/CopyPaste"
  version "2.2.2"

  on_linux do
    url "https://github.com/rgdevment/CopyPaste/releases/download/v2.2.2/CopyPaste_2.2.2_amd64.deb"
    sha256 "b2c3191b556ba151a49bddf52d8452a151b5385df475a3506bbb45111e5a169d"
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
