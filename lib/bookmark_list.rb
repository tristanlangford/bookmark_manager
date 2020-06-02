require 'pg'

class BookmarkList

  def self.show_list
    con = PG.connect :dbname => 'bookmark_manager'

    rs = con.exec "SELECT url FROM bookmarks"

    rs.map { |bookmark| bookmark['url'] }
    end
end
