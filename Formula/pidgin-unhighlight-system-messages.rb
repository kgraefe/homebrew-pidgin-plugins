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
    pidgin-unhighlight-system-messages is separate package that cannot be
    installed into Pidgin's context automatically. To make it visible to Pidgin
    you must create a link in your personal .purple directory:
        mkdir -p ~/.purple/plugins/
        ln -s /usr/local/lib/pidgin/unhighlight_system_messages.so ~/.purple/plugins/

    Alternatively you can create link to /usr/local/lib/pidgin directly:
        ln -s /usr/local/lib/pidgin ~/.purple/plugins
  EOS
  end
end
