require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Bookmark Manager'
  end  

  get '/bookmarks' do
    # p ENV
    @bookmarks = Bookmarks.all
    erb :index
  end

  get '/bookmarks/new' do
    erb :"bookmarks/new"
  end

  post '/bookmarks' do
    Bookmarks.create(url: params[:url])
    redirect '/bookmarks'
  end

  run! if app_file == $0
end
