class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :interests, :dependent => :destroy
  has_many :movies, :through => :interests

  def interested_in?(movie)
    interests.detect {|interest| interest.movie_id == movie.id}
  end

  def releases(future_release=false)
    movie_ids = movies.map(&:id)
    if future_release
      conditions = [
          "released_on >= ? AND movie_id IN (?)",
          Date.today,
          movie_ids
      ] else
          conditions = [
              "movie_id IN (?)",
              movie_ids
          ]
    end
    Release.all.includes(:movie)
                 .where(conditions)
                 .order('released_on DESC')

  end
end
