class MoviesController < ApplicationController
  def index
  end

  def new
    @movie = Movie.new
    @genres = Genre.all
  end

  def create
    @movie = Movie.new
    @movie.title = params[:movie].delete :title
    @movie.release_year = params[:movie].delete :release_year
    @movie.genres = Genre.find(params[:movie].delete :genres)
    @movie.save
    redirect_to movies_path
  end
end
