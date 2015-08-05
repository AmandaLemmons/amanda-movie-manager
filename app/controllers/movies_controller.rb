class MoviesController < ApplicationController

  def dashboard
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new params.require(:movie).permit(:title, :release_year, :format, :length, :rating)
    @movie.save!
    redirect_to index_path
  end

  def index
    @movies = Movie.all
  end

  def update
  end

  def show
    @movie = Movie.find params[:id]
  end

  def edit
  end

  def destroy
    @movie = Movie.find params[:id]
    @movie.destroy
    redirect_to index_path
  end

end
