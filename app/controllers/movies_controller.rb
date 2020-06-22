class MoviesController < ApplicationController
    def index
        # list all movies from the session variable
        @movies = session[:movies]
        # render "movies/index"
    end

    def new
    end

    def create
        puts "------------------"
        puts params
        # store the data coming from the form into rails session names movies
        if session[:movies] == nil
            session[:movies] = []
        end
        session[:movies].push(params[:movie])
        # redirect to the show html page
        redirect_to movie_path(session[:movies].length)

        # /movies/2
    end

    def show
        # session[:movies] = ["Avengers","The Dark Night","the third movie"]
        # if I want to show only Avengers
        @movie = session[:movies][params[:id].to_i - 1]
        puts "---show method"
        puts @movie
    end

end