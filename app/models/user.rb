class User < ApplicationRecord
  has_many :user_saved_exhibits
  has_many :exhibits, through: :user_saved_exhibits

  has_many :user_followed_venues
  has_many :venues, through: :user_followed_venues

  has_many :user_saved_lists
  has_many :lists, through: :user_saved_lists

  # has_many :friendships
  # has_many :friends, through: :friendships

end
