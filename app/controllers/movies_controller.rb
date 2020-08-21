class MoviesController < ApplicationController
  PER_PAGE = 18
  def index
    @movies = Movie.order(id: :asc).page(params[:page]).per(PER_PAGE)
  end
end
