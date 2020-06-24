class MoviesController < ApplicationController
    def index
        # list all movies from the session variable
        @movies = session[:movies]
        # render "movies/index"
    end

    def new
    end

    def create
        # puts "------------------"
        # puts params
        # # store the data coming from the form into rails session names movies
        # if session[:movies] == nil
        #     session[:movies] = []
        # end
        # session[:movies].push(params[:movie])
        # # redirect to the show html page
        # redirect_to movie_path(session[:movies].length)

        @movie = Movie.new(params[:movie])
        @movie.save
        # Movie.create(params[:movie])
        # redirect_to movie_path(@movie.id)

        # /movies/2
    end

    def show
        # session[:movies] = ["Avengers","The Dark Night","the third movie"]
        # if I want to show only Avengers
        @movie = session[:movies][params[:id].to_i - 1]
        puts "---show method"
        puts @movie
    end

    def edit
        # prepopulate the movie variable that needs to be edited

        # movies = ["harry potter", "Avengers"]
        @movie = session[:movies][params[:id].to_i - 1]
    end

    def update
        # find the movie item in the array that requires an update and replace with the incoming data
        session[:movies][params[:id].to_i - 1] = params[:movie]
        redirect_to movie_path(params[:id].to_i)
    end

end