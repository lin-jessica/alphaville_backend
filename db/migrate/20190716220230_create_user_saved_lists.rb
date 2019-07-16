class CreateUserSavedLists < ActiveRecord::Migration[5.2]
  def change
    create_table :user_saved_lists do |t|
      t.integer :user_id
      t.integer :list_id

      t.timestamps
    end
  end
end
