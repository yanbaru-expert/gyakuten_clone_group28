class MoviesController < ApplicationController
  PER_PAGE = 18
  def index
    @movies = Movie.order(id: :asc).page(params[:page]).per(PER_PAGE)
    @movies = Movie.includes(:user)
    @learnd_movie_ids = current_user.watched_movies.pluck(:movie_id)
  end
end
