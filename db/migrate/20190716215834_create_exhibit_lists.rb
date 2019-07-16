class CreateExhibitLists < ActiveRecord::Migration[5.2]
  def change
    create_table :exhibit_lists do |t|
      t.integer :exhibit_id
      t.integer :list_id

      t.timestamps
    end
  end
end
