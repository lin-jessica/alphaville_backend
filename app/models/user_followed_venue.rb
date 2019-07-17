# == Schema Information
#
# Table name: user_followed_venues
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  venue_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class UserFollowedVenue < ApplicationRecord
  belongs_to :user
  belongs_to :venue
  
end
