class Exhibit < ApplicationRecord
  belongs_to :venue

  has_many :exhibit_lists
  has_many :lists, through: :exhibit_lists

  has_many :user_saved_exhibits
  has_many :users, through: :user_saved_exhibits

end
