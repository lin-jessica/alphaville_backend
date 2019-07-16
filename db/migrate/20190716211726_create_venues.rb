class CreateVenues < ActiveRecord::Migration[5.2]
  def change
    create_table :venues do |t|
      t.string :name
      t.string :type
      t.string :address
      t.string :phone
      t.string :directions
      t.string :neighborhood
      t.time :opening_hour
      t.time :closing_hour
      t.boolean :open_mon
      t.boolean :open_tue
      t.boolean :open_wed
      t.boolean :open_thu
      t.boolean :open_fri
      t.boolean :open_sat
      t.boolean :open_sun
      t.text :schedule_details
      t.text :schedule_note
      t.decimal :latitude
      t.decimal :longitude

      t.timestamps
    end
  end
end
