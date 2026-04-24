class CopypasteBeta < Formula
  desc "Clipboard history manager"
  homepage "https://github.com/rgdevment/CopyPaste"
  version "2.3.0-beta.1"

  on_linux do
    url "https://github.com/rgdevment/CopyPaste/releases/download/v2.3.0-beta.1/CopyPaste_2.3.0-beta.1_amd64.deb"
    sha256 "d6d39d09c41e6d32220d18b1271c7313a42ffb2252ce51db3a2f07f4e3fae789"
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
