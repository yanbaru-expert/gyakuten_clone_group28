class MoviesController < ApplicationController
  def index
    @movies = Movie.order(id: :asc).page(params[:page]).per(18)
  end
end
