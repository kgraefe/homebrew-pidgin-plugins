class PidginMasterPassword < Formula
  desc "This is a Pidgin plugin that stores account passwords encrypted by a master password."
  homepage "https://github.com/kgraefe/pidgin-master-password"
  url "https://github.com/kgraefe/pidgin-master-password/releases/download/v1.0/pidgin-master-password-1.0.tar.gz"
  sha256 "588610afad56fabaa92dac140ce479bcc1afc611f0805edf73b072bbff6dc732"

  depends_on "pidgin"
  depends_on "libsodium"
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
