class Copypaste < Formula
  desc "Clipboard history manager"
  homepage "https://github.com/rgdevment/CopyPaste"
  version "2.2.6"

  on_linux do
    url "https://github.com/rgdevment/CopyPaste/releases/download/v2.2.6/CopyPaste_2.2.6_amd64.deb"
    sha256 "51961dc8a31e8398e3b476e845220b4bd1f7e9e480e7a795bb3a7705e35c3c23"
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
