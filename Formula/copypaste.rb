class Copypaste < Formula
  desc "Clipboard history manager"
  homepage "https://github.com/rgdevment/CopyPaste"
  version "2.3.0"

  on_linux do
    url "https://github.com/rgdevment/CopyPaste/releases/download/v2.3.0/CopyPaste_2.3.0_amd64.deb"
    sha256 "c75e2bcd9d676fea9250ee422ddd6644cd0d2d6feae223725c33aa5c208fc495"
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
