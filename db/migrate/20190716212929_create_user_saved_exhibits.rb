class CreateUserSavedExhibits < ActiveRecord::Migration[5.2]
  def change
    create_table :user_saved_exhibits do |t|
      t.integer :user_id
      t.integer :exhibit_id

      t.timestamps
    end
  end
end
