class RemoveContentMovies < ActiveRecord::Migration[6.0]
  def change
    remove_column :movies, :content, :text
  end
end
