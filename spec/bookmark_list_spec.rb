require 'bookmark_list'

describe BookmarkList do

describe '#show_list' do
  it 'displays a list of bookmarks' do
    bookmarks = ["www.github.com", "www.bbc.co.uk", "www.gmail.com"]
    expect(BookmarkList.show_list).to eq(bookmarks)
  end
end

end
