class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.integer :movie_id
      t.integer :artist_id
      t.string :name

      t.timestamps null: false
    end
  end
end
