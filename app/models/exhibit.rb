# == Schema Information
#
# Table name: exhibits
#
#  id              :integer          not null, primary key
#  name            :string
#  start_date      :date
#  end_date        :date
#  img_url         :string
#  price           :text
#  free            :boolean
#  reception       :boolean
#  reception_date  :date
#  reception_start :time
#  reception_end   :time
#  permanent       :boolean
#  days_left       :integer
#  venue_id        :integer
#  author_user_id  :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Exhibit < ApplicationRecord
  belongs_to :venue

  has_many :exhibit_lists
  has_many :lists, through: :exhibit_lists

  has_many :user_saved_exhibits
  has_many :users, through: :user_saved_exhibits

end
