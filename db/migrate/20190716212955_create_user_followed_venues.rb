class CreateUserFollowedVenues < ActiveRecord::Migration[5.2]
  def change
    create_table :user_followed_venues do |t|
      t.integer :user_id
      t.integer :venue_id

      t.timestamps
    end
  end
end
