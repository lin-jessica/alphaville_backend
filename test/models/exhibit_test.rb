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

require 'test_helper'

class ExhibitTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
