class Copypaste < Formula
  desc "Clipboard history manager"
  homepage "https://github.com/rgdevment/CopyPaste"
  version "2.2.3"

  on_linux do
    url "https://github.com/rgdevment/CopyPaste/releases/download/v2.2.3/CopyPaste_2.2.3_amd64.deb"
    sha256 "f4ca9a570e7c68202ad854c5789446fc7f15668a10b5ac3a91dab9553b91f515"
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
