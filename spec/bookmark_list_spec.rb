require 'bookmark_list'
require 'database_helper'

describe BookmarkList do

  it 'displays a list of bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    # Add the test data
    connection.exec("INSERT INTO bookmarks VALUES(1, 'www.github.com', 'Github');")
    connection.exec("INSERT INTO bookmarks VALUES(2, 'www.bbc.co.uk', 'BBC');")
    connection.exec("INSERT INTO bookmarks VALUES(3, 'www.gmail.com', 'Gmail');")

    bookmarks = BookmarkList.show_list
    expect(bookmarks).to include "Github"
    expect(bookmarks).to include "BBC"
    expect(bookmarks).to include "Gmail"
  end

  it 'add a bookmark' do
    BookmarkList.add('www.google.com', "google")
    expect(BookmarkList.show_list).to include("google")
  end

end
