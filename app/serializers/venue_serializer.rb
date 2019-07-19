class VenueSerializer < ActiveModel::Serializer
  attributes :id, :name, :kind, :address, :phone, :directions, :neighborhood, :opening_hour, :closing_hour, :open_mon, :open_tue, :open_wed, :open_thu, :open_fri, :open_sat, :open_sun, :schedule_details, :schedule_note, :latitude, :longitude
end
