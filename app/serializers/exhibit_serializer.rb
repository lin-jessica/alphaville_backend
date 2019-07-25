class ExhibitSerializer < ActiveModel::Serializer
  attributes :id, :name, :venue_name, :venue_latitude, :venue_longitude, :venue_neighborhood, :start_date, :end_date, :img_url, :description, :price, :free, :reception, :permanent
  # belongs_to :venue
end
