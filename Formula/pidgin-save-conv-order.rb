class PidginSaveConvOrder < Formula
  desc "This plugin saves the order of chats and IMs and restores it the next time you open a conversation."
  homepage "https://github.com/kgraefe/pidgin-save-conv-order"
  url "https://github.com/kgraefe/pidgin-save-conv-order/releases/download/v1.1/pidgin-save-conv-order-1.1.tar.gz"
  sha256 "5b9e796ed75979594538100fe788eeeed5961c27b8f4cd8bb13f33290b5f6ce8"

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
