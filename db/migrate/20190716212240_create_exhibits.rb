class CreateExhibits < ActiveRecord::Migration[5.2]
  def change
    create_table :exhibits do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.string :img_url
      t.text :price
      t.boolean :free
      t.boolean :reception
      t.date :reception_date
      t.time :reception_start
      t.time :reception_end
      t.boolean :permanent
      t.integer :days_left
      t.integer :venue_id
      t.integer :author_user_id #stretch

      t.timestamps
    end
  end
end
