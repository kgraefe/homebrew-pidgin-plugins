class PidginToolbarShrink < Formula
  desc "Shrinks the toolbar of the conversation windows by hiding the text of the buttons."
  homepage "https://launchpad.net/pidgin-toolbar-shrink"
  url "https://launchpad.net/pidgin-toolbar-shrink/trunk/1.1.1/+download/pidgin-toolbar-shrink-1.1.1.tar.gz"
  sha256 "381b1b632e3f7a936d510f87ffa3ede45cfc3cd67151577162fe0d5ceb1f9255"

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
    pidgin-toolbar-shrink is separate package that cannot be installed into
    Pidgin's context automatically. To make it visible to Pidgin you must
    create a link in your personal .purple directory:
        mkdir -p ~/.purple/plugins/
        ln -s /usr/local/lib/pidgin/toolbar_shrink.so ~/.purple/plugins/

    Alternatively you can create link to /usr/local/lib/pidgin directly:
        ln -s /usr/local/lib/pidgin ~/.purple/plugins
  EOS
  end
end
