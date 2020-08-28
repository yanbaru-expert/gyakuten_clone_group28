class Watched_MoviesController< ApplicationController
    def create
      current_user.watched_movies.create!(id: params[:id])
      redirect_to root_path
    end

    def destroy
      current_user.watched_movies.find_by(id: params[:id]).destroy!
      redirect_to root_path
    end
end
