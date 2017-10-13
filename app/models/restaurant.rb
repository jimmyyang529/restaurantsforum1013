class Restaurant < ApplicationRecord
	validates_presence_of :name
	belongs_to :category, optional: true
	has_one :location #單數，不用加s

    has_many :comments
    has_many :users, :through => :comments

   has_many :favorites, :dependent => :destroy
   has_many :favorited_users, :through => :favorites, :source => :user

  def find_my_favorite(user)
    if user
      self.favorites.where( :user_id => user.id ).first
   	else
    end
  end

  def is_favorited_by(user)
    find_favorite(user).present?
  end


    
end
