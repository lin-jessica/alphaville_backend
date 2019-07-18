class RemoveDaysLeftFromExhibits < ActiveRecord::Migration[5.2]
  def change
    remove_column :exhibits, :days_left, :integer
  end
end
