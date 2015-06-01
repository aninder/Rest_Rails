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
end