class MoviesController < ApplicationController

  def dashboard
  end

  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new params.require(:movie).permit(:title, :release_year, :format, :length, :rating)
    @movie.save!
    redirect_to index_path
  end

  def show
    @movie = Movie.find params[:id]
  end

  def edit
    @movie = Movie.find params[:id]
  end


  def update
    @movie = Movie.find params[:id]
    if @movie.update params.require(:movie).permit(:title, :release_year, :format,  :length, :rating)
      redirect_to index_path
    else
      render :edit
    end
  end

  def destroy
    @movie = Movie.find params[:id]
    @movie.destroy
    redirect_to index_path
  end

end
