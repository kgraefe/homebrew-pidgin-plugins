class PidginBirthdayReminder < Formula
  desc "Pidgin Birthday Reminder reminds you of your buddies birthdays. Birthdays can be set by hand or be automatically filled-in for ICQ, MSN and XMPP protocols."
  homepage "https://github.com/kgraefe/pidgin-birthday-reminder"
  url "https://github.com/kgraefe/pidgin-birthday-reminder/releases/download/v1.13/pidgin-birthday-reminder-1.13.tar.gz"
  sha256 "c9a7d7e24bae42d4ead1b096599e3a803cbf1091b0b782d12bcc297d9359f007"

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
