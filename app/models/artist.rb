class Artist < ActiveRecord::Base
  mount_uploader :image, ArtistImageUploader
  validates_presence_of :first_name, :last_name

  has_many :roles, :dependent => :destroy
  has_many :movies, :through => :roles

  def full_name
    [first_name, last_name].join(' ')
  end
end
