class AddIndexToReleases < ActiveRecord::Migration
  def change
    add_index :releases, :movie_id
  end
end
