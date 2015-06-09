class AddIndexToRoles < ActiveRecord::Migration
  def change
    add_index :roles, :movie_id
    add_index :roles, :artist_id
  end
end
