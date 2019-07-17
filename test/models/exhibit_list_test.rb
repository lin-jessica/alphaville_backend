# == Schema Information
#
# Table name: exhibit_lists
#
#  id         :integer          not null, primary key
#  exhibit_id :integer
#  list_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ExhibitListTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
