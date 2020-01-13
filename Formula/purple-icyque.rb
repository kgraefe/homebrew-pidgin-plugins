class PurpleIcyque < Formula
  desc "ICQ WIM protocol for libpurple"
  homepage "https://github.com/EionRobb/icyque"
  version "git"
  revision 5

  url "https://github.com/EionRobb/icyque.git",
    :revision => "ebc522743e98a6b9e1fa0703703fa5298862b60a"

  depends_on "pidgin"
  depends_on "json-glib"
  depends_on "pkg-config" => :build

  def install
    system "make", "install", "ICYQUE_DEST=" + lib + "/purple-2"
  end

  def caveats; <<~EOS
    Make sure to properly install purple-add-prefix. Otherwise the plugin will
    not be visible in Pidgin.
  EOS
  end

end
