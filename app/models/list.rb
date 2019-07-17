# == Schema Information
#
# Table name: lists
#
#  id         :integer          not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class List < ApplicationRecord
  has_many :exhibit_lists
  has_many :exhibits, through: :exhibit_lists

  has_many :user_saved_lists
  has_many :users, through: :user_saved_lists

end
