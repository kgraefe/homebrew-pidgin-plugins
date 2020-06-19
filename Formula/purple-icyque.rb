class PurpleIcyque < Formula
  desc "ICQ WIM protocol for libpurple"
  homepage "https://github.com/EionRobb/icyque"
  version "git"
  revision 6

  url "https://github.com/EionRobb/icyque.git",
    :revision => "4fc08a09f2824bd039089fa54cbabf6be2221707"

  depends_on "pidgin"
  depends_on "json-glib"
  depends_on "pkg-config" => :build

  def install
    system "make", "install", "ICYQUE_DEST=" + lib + "/purple-2"
  end
end
