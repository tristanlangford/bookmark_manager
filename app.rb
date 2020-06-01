require 'sinatra'

class BookmarkManager < Sinatra::Base
  get '/' do
    'Hello, world'
  end

  get '/bookmarks' do
    erb(:bookmarks)
  end
end
