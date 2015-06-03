class Release < ActiveRecord::Base
  belongs_to :movie
  validates_presence_of :movie_id, :format, :released_on

  def to_s
    [self.format, released_on.to_s(:short)].join(' - ')
  end
end
