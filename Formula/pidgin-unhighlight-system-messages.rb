class PidginUnhighlightSystemMessages < Formula
  desc "Plugin to remove the highlight flag from system messages."
  homepage "https://github.com/kgraefe/pidgin-unhighlight-system-messages"
  url "https://github.com/kgraefe/pidgin-unhighlight-system-messages/releases/download/v1.0/pidgin-unhighlight-system-messages-1.0.tar.gz"
  sha256 "a06da15bd5e23d17dfd2d1024a72c61584780327c4b894605098acf579a3012c"

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
