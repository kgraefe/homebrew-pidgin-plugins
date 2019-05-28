class PidginZncHelper < Formula
  desc "ZNC Helper uses message timestamp from a ZNC Bouncer and sets them within Pidgin so that replayed messages will be displayed with the correct timestamp."
  homepage "https://github.com/kgraefe/pidgin-znc-helper"
  url "https://github.com/kgraefe/pidgin-znc-helper/releases/download/v1.8/pidgin-znc-helper-1.8.tar.gz"
  sha256 "3a27fdcb2ed90c8c32582ad6dfeb4cc9110ff33b365c7c380b0bb6a7155d15cf"

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
    pidgin-znc-helper is separate package that cannot be installed into
    Pidgin's context automatically. To make it visible to Pidgin you must
    create a link in your personal .purple directory:
        mkdir -p ~/.purple/plugins/
        ln -s /usr/local/lib/pidgin/znchelper.so ~/.purple/plugins/

    Alternatively you can create link to /usr/local/lib/pidgin directly:
        ln -s /usr/local/lib/pidgin ~/.purple/plugins
  EOS
  end
end
