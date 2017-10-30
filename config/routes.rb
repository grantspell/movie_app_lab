Rails.application.routes.draw do

  root "movies#index"
  
  get '/movies', to: "movies#index", as: 'movies'
  patch '/movies/:id', to: "movies#update", as: 'update_movie'

end
