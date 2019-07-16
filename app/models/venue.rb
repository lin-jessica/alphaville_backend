class Venue < ApplicationRecord
  has_many :exhibits

  has_many :user_followed_venues
  has_many :users, through: :user_followed_venues

end
