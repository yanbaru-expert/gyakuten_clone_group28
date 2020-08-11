class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.title :string
      t.url :string
      t.content :text
      t.timestamps
    end
  end
end
