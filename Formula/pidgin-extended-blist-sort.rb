class PidginExtendedBlistSort < Formula
  desc "This plugin allows you to sort your buddy list more flexible than Pidgin does."
  homepage "https://github.com/kgraefe/pidgin-extended-blist-sort"
  url "https://github.com/kgraefe/pidgin-extended-blist-sort/releases/download/v1.10/pidgin-extended-blist-sort-1.10.tar.gz"
  sha256 "91473fdbdc8fdcc4976d122a140014e4d538ab4ee26d5af10760aad17c7a0ff0"

  depends_on "pidgin"
  depends_on "intltool" => :build
  depends_on "pkg-config" => :build

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  def caveats; <<~EOS
    Make sure to properly install purple-add-prefix. Otherwise the plugin will
    not be visible in Pidgin.
  EOS
  end
end
