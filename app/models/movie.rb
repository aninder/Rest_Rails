class Movie < ActiveRecord::Base
  validates_presence_of :title
  validates_length_of :title, :in => 1..100
  validates_numericality_of :rating, :only_integer => true, less_than: 10, greater_than: 0

  has_many :roles, :dependent => :destroy
  has_many :artists, :through => :roles

  has_many :interests, :dependent => :destroy
  has_many :users, :through => :interests

  def new_role=(values)
    values.each do |i, hash|
      unless hash[:name].blank?
        roles.create(:artist_id => hash[:artist_id], :name => hash[:name])
      end
    end
  end

  def deleted_roles=(values)
    to_be_deleted = roles.find(*values)
    if to_be_deleted.instance_of?Array
        to_be_deleted.each &:destroy
    else
      to_be_deleted.destroy
    end
  end

end
