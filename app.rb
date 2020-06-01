require 'sinatra'

class BookmarkManager < Sinatra::Base
  get '/' do
    'Hello, world'
  end
end
