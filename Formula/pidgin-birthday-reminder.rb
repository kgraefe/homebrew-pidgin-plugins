class PidginBirthdayReminder < Formula
  desc "Pidgin Birthday Reminder reminds you of your buddies birthdays. Birthdays can be set by hand or be automatically filled-in for ICQ, MSN and XMPP protocols."
  homepage "https://github.com/kgraefe/pidgin-birthday-reminder"
  url "https://github.com/kgraefe/pidgin-birthday-reminder/releases/download/v1.12/pidgin-birthday-reminder-1.12.tar.gz"
  sha256 "1a7e55e15400e1ad4d264d5416999c47a37b28e0f3f184fb353126458b9f4d65"

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
    pidgin-birthday-reminder is separate package that cannot be installed
    into Pidgin's context automatically. To make it visible to Pidgin you must
    create a link in your personal .purple directory:
        mkdir -p ~/.purple/plugins/
        ln -s /usr/local/lib/pidgin/birthday_reminder.so ~/.purple/plugins/

    Alternatively you can create link to /usr/local/lib/pidgin directly:
        ln -s /usr/local/lib/pidgin ~/.purple/plugins
  EOS
  end
end
