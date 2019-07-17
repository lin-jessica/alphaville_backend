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

class ExhibitList < ApplicationRecord
  belongs_to :list
  belongs_to :exhibit

end
