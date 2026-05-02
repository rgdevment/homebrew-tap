class Copypaste < Formula
  desc "Clipboard history manager"
  homepage "https://github.com/rgdevment/CopyPaste"
  version "2.5.0"

  on_linux do
    url "https://github.com/rgdevment/CopyPaste/releases/download/v2.5.0/CopyPaste_2.5.0_amd64.deb"
    sha256 "218a99de2c79a94c9e458f168a1626f21f312a1fd2059a870ddb1f69281a191c"
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
