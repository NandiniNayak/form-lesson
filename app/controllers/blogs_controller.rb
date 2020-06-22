class BlogsController < ApplicationController
    def index
    end

    def create
        # params allows us to capture data coming from the form
        # rails allows to store data in the cookie, the way we can store data in the cookie is using a variable called session
        puts "----------"
        puts params
        # only if the blogs is nill create an empty array
        if session[:blogs] == nil
            session[:blogs] = []
        end
        # push the data coming from the form into the session
        session[:blogs].push(params[:blog])
        # redirect to show page
        # session[:blogs] = ["first blog", "second blog", "third blog", "fourth blog"]
        redirect_to blog_path(session[:blogs].length)
     end

    def new
    end

    def show
        # session[:blogs] = ["first blog", "second blog", "third blog", "fourth blog"]
        # # show a single blog from the session
        # @blog = 
        # params give the dymanic data coming from the url
        # puts "show method------"
        # puts params[:id]
        @blog = session[:blogs][params[:id].to_i-1]
        puts "blog value is"
        puts @blog
    end
end