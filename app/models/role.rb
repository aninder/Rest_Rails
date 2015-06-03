class Role < ActiveRecord::Base
  belongs_to :movie
  belongs_to :artist
  # cannot validate presence of movie_id
  # as the role is saved as a relation of movie
  # and before movie is saved validations are run
  # on role , and role doesnt have movie_id as movie has
  # not been saved yet!!
  # interestingly when saving the movie object gets saved first
  # and then the role

  #think of a good workaround
  # mayb validate in after_save callback
  validates_presence_of :artist_id, :name


  def to_s
    [artist.full_name, name].join(' - ')
  end

end
