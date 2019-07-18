class AddApiIdToExhibition < ActiveRecord::Migration[5.2]
  def change
    add_column :exhibits, :api_id, :string
    add_column :exhibits, :description, :text
    add_column :venues, :kind, :string
    remove_column :venues, :type
    remove_column :venues, :latitude
    remove_column :venues, :longitude
    add_column :venues, :latitude, :decimal, {:precision=>10, :scale=>6}
    add_column :venues, :longitude, :decimal, {:precision=>10, :scale=>6}
  end
end
