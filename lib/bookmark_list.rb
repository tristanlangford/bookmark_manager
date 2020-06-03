require 'pg'

class BookmarkList

  def self.show_list
    if ENV['RACK_ENV'] == 'test'

      con = PG.connect :dbname => 'bookmark_manager_test'

    else

      con = PG.connect :dbname => 'bookmark_manager'

    end

    rs = con.exec "SELECT url FROM bookmarks"

    rs.map { |bookmark| bookmark['url'] }
    end

    def self.add(url)
      if ENV['RACK_ENV'] == 'test'

        con = PG.connect :dbname => 'bookmark_manager_test'

      else

        con = PG.connect :dbname => 'bookmark_manager'

      end

      rs = con.exec "INSERT INTO bookmarks (url) VALUES ('#{url}')"
    end

end
