class PurpleIcyque < Formula
  desc "ICQ WIM protocol for libpurple"
  homepage "https://github.com/EionRobb/icyque"
  head "https://github.com/EionRobb/icyque.git"

  depends_on "pidgin"
  depends_on "json-glib"
  depends_on "pkg-config" => :build

  def install
    system "make", "install", "ICYQUE_DEST=" + lib + "/pidgin"
  end

  def caveats; <<~EOS
    Make sure to properly install purple-add-prefix. Otherwise the plugin will
    not be visible in Pidgin.
  EOS
  end

end
