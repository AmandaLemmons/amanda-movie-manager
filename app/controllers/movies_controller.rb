class MoviesController < ApplicationController

  def dashboard
  end

  def index
    @movies = Movie.all
    @sort_column = sort_column
    @movies = Movie.order(@sort_column.order)
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

  def sort_column
  title_sort = SortableTable::SortColumnCustomDefinition.new('title',
    asc: 'title asc',
    desc: 'title desc')

  release_year_sort = SortableTable::SortColumnDefinition.new('release_year')

  format_sort = SortableTable::SortColumnDefinition.new('format')

  length_sort = SortableTable::SortColumnDefinition.new('length')

  rating_sort = SortableTable::SortColumnDefinition.new('rating')

  sort_table = SortableTable::SortTable.new([title_sort, release_year_sort, format_sort, length_sort, rating_sort])
  sort_table.sort_column(params[:sort], params[:direction])
end


  def destroy
    @movie = Movie.find params[:id]
    @movie.destroy
    redirect_to index_path
  end

end
