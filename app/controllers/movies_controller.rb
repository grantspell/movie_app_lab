class MoviesController < ApplicationController

    def index
        @movies = Movie.all
    end

    def new

    end

    def destroy
        Movie.destroy(params[:api_title])
    end

    private

    def movie_params
        params.require(:movie).permit(:id, :title, :api_title)
    end

end
