class MoviesController < ApplicationController
  PER_PAGE = 18
  def index
    @movies = Movie.order(id: :asc).page(params[:page]).per(PER_PAGE)
  end

  def new
    @movie = Movie.new
  end

  def create
    current_user.movies.create!(message_params)
    redirect_to root_path
  end

  def edit
  end

  def update
  end

  # ***** 以下を編集 *****
  def destroy
    @movie.destroy!
    redirect_to root_path
  end
  # ***** 以上を編集 *****

  private

  def movie_params
    params.require(:movie).permit(:url)
  end

  # ***** 以下を追加 *****
  def correct_user
    @movie = current_user.movies.find_by(id: params[:id])
    redirect_to root_path if @movie.nil?
  end
end
