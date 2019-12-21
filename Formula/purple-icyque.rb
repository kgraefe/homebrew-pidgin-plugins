class PurpleIcyque < Formula
  desc "ICQ WIM protocol for libpurple"
  homepage "https://github.com/EionRobb/icyque"
  version "git"
  revision 4

  url "https://github.com/EionRobb/icyque.git",
    :revision => "bc266be8e891cbbd7466d901c06d1c57e327ceb9"

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
