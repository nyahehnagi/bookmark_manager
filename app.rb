require 'sinatra'
require "sinatra/reloader" if development?
require './lib/bookmark'

class BookmarkManager < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :'bookmarks/index'
  end

  get '/bookmarks/new' do
    erb :"bookmarks/new"
  end

  post '/bookmarks' do
    url = params['url']
    connection = PG.connect(dbname: 'bookmark_manager_test')
    connection.exec("INSERT INTO bookmarks (url) VALUES('#{url}')")
    redirect '/bookmarks'
  end

  # Start the server if this file is executed directly 
  # (do not change the line below)
  run! if app_file == $0
end
