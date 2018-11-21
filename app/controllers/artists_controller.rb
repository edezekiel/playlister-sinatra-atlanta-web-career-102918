class ArtistsController < ApplicationController
  set :views, 'app/views/artists'
  set :method_override, true

  get '/artists' do
    @artists = Artist.all
    erb :index
  end

  #artist/new

  #artist/:slug
end
