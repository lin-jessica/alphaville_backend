# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  first_name      :string
#  last_name       :string
#  email           :string
#  password_digest :string
#  bio             :text
#  profile_img     :string
#  mobile_num      :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  has_many :user_saved_exhibits
  has_many :exhibits, through: :user_saved_exhibits

  has_many :user_followed_venues
  has_many :venues, through: :user_followed_venues

  has_many :user_saved_lists
  has_many :lists, through: :user_saved_lists

  # has_many :friendships
  # has_many :friends, through: :friendships

  # has_secure_password

  validates :first_name, :last_name, presence: true
  validates :email, uniqueness: true

end
