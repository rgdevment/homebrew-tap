class Copypaste < Formula
  desc "Clipboard history manager"
  homepage "https://github.com/rgdevment/CopyPaste"
  version "2.1.1"

  on_linux do
    url "https://github.com/rgdevment/CopyPaste/releases/download/v2.1.1/CopyPaste_2.1.1_amd64.deb"
    sha256 "237936d63e5092e82e1774a2f37653d15fcf8b4a9e50b89dbcaaaefed35b09d5"
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
