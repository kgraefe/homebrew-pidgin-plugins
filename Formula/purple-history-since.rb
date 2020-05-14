class PurpleHistorySince < Formula
  desc "Avoid duplicated chat history on some XMPP servers."
  homepage "https://github.com/kgraefe/purple-history-since"
  url "https://github.com/kgraefe/purple-history-since/releases/download/v1.0/purple-history-since-1.0.tar.gz"
  sha256 "9ba878807954bce333296a1e6634e940d2ec85471d336fdbde0931f549542a7e"

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
end
