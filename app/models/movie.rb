class Movie < ActiveRecord::Base
  validates_presence_of :title
  validates_length_of :title, :in => 1..100
  validates_uniqueness_of :title
  validates_numericality_of :rating, :only_integer => true, less_than: 10, greater_than: 0

  has_many :roles, :dependent => :destroy, autosave: true

  has_many :artists, :through => :roles

  has_many :interests, :dependent => :destroy
  has_many :users, :through => :interests

  has_many :releases, :dependent => :destroy

  def new_role=(values)
    values.each do |i, hash|
      # hak so hash[:new] can work frm rails console, hash has key "name" which is not a symbol
      # ActionController::Parameters.new treats string n symbol keys with same name , equal
      hash = ActionController::Parameters.new(hash)
      unless hash[:name].blank?
        roles.build(:artist_id => hash[:artist_id], :name => hash[:name])
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
