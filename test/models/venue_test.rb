# == Schema Information
#
# Table name: venues
#
#  id               :integer          not null, primary key
#  name             :string
#  type             :string
#  address          :string
#  phone            :string
#  directions       :string
#  neighborhood     :string
#  opening_hour     :time
#  closing_hour     :time
#  open_mon         :boolean
#  open_tue         :boolean
#  open_wed         :boolean
#  open_thu         :boolean
#  open_fri         :boolean
#  open_sat         :boolean
#  open_sun         :boolean
#  schedule_details :text
#  schedule_note    :text
#  latitude         :decimal(, )
#  longitude        :decimal(, )
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'test_helper'

class VenueTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
