class MoviesController < ApplicationController
  PER_PAGE = 18
  def index
    @movies = Movie.order(id: :asc).page(params[:page]).per(PER_PAGE)
    @learned_movie_ids = current_user.watched_movies.pluck(:movie_id)
  end
end
