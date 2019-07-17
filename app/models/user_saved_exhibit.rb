# == Schema Information
#
# Table name: user_saved_exhibits
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  exhibit_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class UserSavedExhibit < ApplicationRecord
  belongs_to :user
  belongs_to :exhibit
  
end
