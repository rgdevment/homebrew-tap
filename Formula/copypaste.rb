class Copypaste < Formula
  desc "Clipboard history manager"
  homepage "https://github.com/rgdevment/CopyPaste"
  version "2.1.2"

  on_linux do
    url "https://github.com/rgdevment/CopyPaste/releases/download/v2.1.2/CopyPaste_2.1.2_amd64.deb"
    sha256 "53fe107f1fbcea193abd60fa7bc9349261c8f4fa604817ec1117fcd6cd5bbe91"
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
