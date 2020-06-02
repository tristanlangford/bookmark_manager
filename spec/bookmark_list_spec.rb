require 'bookmark_list'

describe BookmarkList do

describe '#show_list' do
  it 'displays a list of bookmarks' do
    bookmarks = ['www.google.com', 'www.github.com', 'www.bbc.co.uk']
    expect(BookmarkList.show_list).to eq(bookmarks)
  end
end

end
