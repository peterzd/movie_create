class CreateGenresMovies < ActiveRecord::Migration
  def up
    create_table :genres_movies, id: false do |t|
      t.integer :genre_id
      t.integer :movie_id
      t.timestamps null: true
    end
  end

  def down
    drop_table :genres_movies
  end
end
