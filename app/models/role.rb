class Role < ActiveRecord::Base
  belongs_to :movie
  belongs_to :artist
  validates_presence_of :movie_id, :artist_id, :name

  def to_s
    [artist.full_name, name].join(' - ')
  end
end
