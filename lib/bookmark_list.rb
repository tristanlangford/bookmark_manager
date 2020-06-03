require 'pg'

class BookmarkList

  def self.show_list
    con = choose_database

    rs = con.exec "SELECT * FROM bookmarks"

    rs.map { |bookmark| bookmark['title'] }
    end

    def self.add(url, title)
      con = choose_database

      rs = con.exec "INSERT INTO bookmarks (url, title) VALUES ('#{url}', '#{title}')"
    end


    def self.choose_database
      if ENV['RACK_ENV'] == 'test'

        PG.connect :dbname => 'bookmark_manager_test'

      else

        PG.connect :dbname => 'bookmark_manager'

      end
    end

end
