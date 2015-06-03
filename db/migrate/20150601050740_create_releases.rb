class CreateReleases < ActiveRecord::Migration
  def change
    create_table :releases do |t|
      t.integer :movie_id
      t.string :format
      t.date :released_on

      t.timestamps null: false
    end
  end
end
