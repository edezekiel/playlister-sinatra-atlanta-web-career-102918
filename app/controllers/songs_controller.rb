class SongsController < ApplicationController
  set :views, 'app/views/songs'
  set :method_override, true

  get '/songs' do
    @songs = Song.all
    erb :index
  end

  #song/new

  #song/:slug

  get '/songs/:slug' do
    @song = Song.find_by_slug(params[:slug])
    erb :'/show'
  end

end
