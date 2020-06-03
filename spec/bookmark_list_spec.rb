require 'bookmark_list'
require 'database_helper'

describe BookmarkList do

  it 'displays a list of bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    # Add the test data
    connection.exec("INSERT INTO bookmarks VALUES(1, 'www.github.com');")
    connection.exec("INSERT INTO bookmarks VALUES(2, 'www.bbc.co.uk');")
    connection.exec("INSERT INTO bookmarks VALUES(3, 'www.gmail.com');")

    bookmarks = BookmarkList.show_list
    expect(bookmarks).to include "www.github.com"
    expect(bookmarks).to include "www.bbc.co.uk"
    expect(bookmarks).to include "www.gmail.com"
  end

  it 'add a bookmark' do
    BookmarkList.add("www.google.com")
    expect(BookmarkList.show_list).to include("www.google.com")
  end

end
