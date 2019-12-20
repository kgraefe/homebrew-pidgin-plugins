class PidginZncHelper < Formula
  desc "ZNC Helper uses message timestamp from a ZNC Bouncer and sets them within Pidgin so that replayed messages will be displayed with the correct timestamp."
  homepage "https://github.com/kgraefe/pidgin-znc-helper"
  url "https://github.com/kgraefe/pidgin-znc-helper/releases/download/v1.9/pidgin-znc-helper-1.9.tar.gz"
  sha256 "9ba711b8cae512f06915ea2fa9cb435a93f46945f6b7ad82678b349cccc8e020"

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
