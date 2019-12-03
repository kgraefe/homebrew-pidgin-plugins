class PurpleAddPrefix < Formula
  desc "Extends the plugin search path of libpurple clients."
  homepage "https://github.com/kgraefe/purple-add-prefix"
  url "https://github.com/kgraefe/purple-add-prefix/releases/download/v1.1/purple-add-prefix-1.1.tar.gz"
  sha256 "e3edbe9006fa6835360c9150eba07b6e62f2ce7b859bba51cc7eaf6d2f0a3b54"

  depends_on "pidgin"
  depends_on "pkg-config" => :build

  def install
    ENV["ADD_PREFIX"] = "/usr/local"
    system "mkdir", "-p", "#{prefix}/lib/purple-2"
    system "make", "install", "PLUGIN_DIR=#{prefix}/lib/purple-2"
  end

  def caveats; <<~EOS
    purple-add-prefix is separate package that cannot be installed into
    Pidgin's context automatically. To make it visible to Pidgin you must
    create a link in your personal .purple directory:
        mkdir -p ~/.purple/plugins/
        ln -s /usr/local/lib/purple-2/purple-add-prefix.so ~/.purple/plugins/
  EOS
  end

end
