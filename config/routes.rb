Rails.application.routes.draw do
  # get all the movies
   get "/movies", to:"movies#index", as:"movies"
  #  create a new movie
  # prefix is inheroted by post route if the url matches
   post "/movies", to:"movies#create"
  #  get a movie form page
   get "/movies/new", to:"movies#new", as:"new_movie"
  #  show a single movie
   get "/movies/:id", to: "movies#show", as:"movie"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
