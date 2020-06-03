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
    expect(bookmarks.first.id).to eq('1')
    expect(bookmarks.first.url).to eq('www.github.com')
    expect(bookmarks.first.title).to eq('Github')
  end

  it 'add a bookmark' do
    BookmarkList.add('www.google.com', "google")
    expect(BookmarkList.show_list.last.title).to eq("google")
  end

  it 'instances hold table information' do
  connection = PG.connect(dbname: 'bookmark_manager_test')

  connection.exec("INSERT INTO bookmarks VALUES(1, 'www.github.com', 'Github');")
  connection.exec("INSERT INTO bookmarks VALUES(2, 'www.bbc.co.uk', 'BBC');")
  connection.exec("INSERT INTO bookmarks VALUES(3, 'www.gmail.com', 'Gmail');")

  instance_array = BookmarkList.show_list

  expect(instance_array[0].title).to eq "Github"
 end


end
