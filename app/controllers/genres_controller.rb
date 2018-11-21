class GenresController < ApplicationController
  set :views, 'app/views/genres'
  set :method_override, true

  get '/genres' do
    @genres = Genre.all
    erb :index
  end

  #genres/new

  #genres/:slug
end
