require 'pg'

def empty_test_database

  p 'setting up database...'

  con = PG.connect :dbname => 'bookmark_manager_test'

  con.exec "TRUNCATE TABLE bookmarks"
end
