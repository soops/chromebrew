require 'package'

class Autoconf < Package
  version '2.69'
  source_url 'ftp://ftp.gnu.org/gnu/autoconf/autoconf-2.69.tar.xz'
  source_sha1 'e891c3193029775e83e0534ac0ee0c4c711f6d23'

  depends_on 'perl'
  depends_on 'm4'

  def self.build
    system "./configure"
    system "make"
  end

  def self.install
    system "make", "DESTDIR=#{CREW_DEST_DIR}", "install"
  end
end
