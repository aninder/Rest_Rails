class AddIndexToInterests < ActiveRecord::Migration
  def change
    add_index :interests, [:user_id, :movie_id], unique:true, order: {user_id: :desc, movie_id: :asc}
    # add_index :interests, :movie_id
  end
end
