require 'bookmark_list'

describe BookmarkList do

describe '#show_list' do
  it 'displays a list of bookmarks' do
    bookmarks = BookmarkList.show_list
    expect(bookmarks).to include "www.github.com"
    expect(bookmarks).to include "www.bbc.co.uk"
    expect(bookmarks).to include "www.gmail.com"
  end
end

end
