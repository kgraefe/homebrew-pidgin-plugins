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
    Make sure to properly install purple-add-prefix. Otherwise the plugin will
    not be visible in Pidgin.
  EOS
  end
end
