# == Schema Information
#
# Table name: user_saved_lists
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  list_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class UserSavedList < ApplicationRecord
  belongs_to :list
  belongs_to :user
  
end
