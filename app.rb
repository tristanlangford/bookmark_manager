require 'sinatra'
require_relative 'lib/bookmark_list'

class BookmarkManager < Sinatra::Base
  get '/' do
    'Bookmark Manager'
  end

  get '/bookmarks' do
    @bookmarks = BookmarkList.show_list
    erb(:bookmarks)
  end
end
