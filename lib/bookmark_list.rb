require 'pg'

class BookmarkList

  attr_reader :id, :url, :title

  def initialize (id, url, title)
    @id = id
    @url = url
    @title = title
  end

  def self.show_list
    con = choose_database

    rs = con.exec "SELECT * FROM bookmarks"

    rs.map { |bookmark| BookmarkList.new(bookmark['id'], bookmark['url'], bookmark['title'])  }
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
