Rails.application.routes.draw do
  resources :posts
  # get all the movies
   get "/movies", to:"movies#index", as:"movies"
  #  create a new movie
  # prefix is inheroted by post route if the url matches
   post "/movies", to:"movies#create"
  #  get a movie form page
   get "/movies/new", to:"movies#new", as:"new_movie"
  #  show a single movie
   get "/movies/:id", to: "movies#show", as:"movie"


  #  Blog post specific routes
  
  get "/blogs", to:"blogs#index", as: "blogs"
  # create a new blog route
   post "/blogs", to:"blogs#create"
  #  add your code here
  # get a blog form route
    get "/blogs/new", to:"blogs#new", as:"new_blog"
  # show a single blog route
   get "/blogs/:id", to: "blogs#show", as:"blog"


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
