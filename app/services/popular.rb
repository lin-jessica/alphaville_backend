class Popular < ApplicationService

  def new; end

  def self.parse_and_create
    popular_events = RestClient.get('http://www.nyartbeat.com/list/event_mostpopular.en.xml')
    create_events(Crack::XML.parse(popular_events)['Events']['Event'])
  end

  private
  def self.create_events(api_arr)
    api_arr.each do |event|
      # debugger
      next if Exhibit.find_by(api_id: event['id'])
      event['Price'] === 'Free' ? free_value = true : free_value = false
      !event['Party'] ? party_value = false : party_value = true
      event['Venue']['DaysClosed']['mon'] === "0" ? mon_value = true : mon_value = false
      event['Venue']['DaysClosed']['tue'] === "0" ? tue_value = true : tue_value = false
      event['Venue']['DaysClosed']['wed'] === "0" ? wed_value = true : wed_value = false
      event['Venue']['DaysClosed']['thu'] === "0" ? thu_value = true : thu_value = false
      event['Venue']['DaysClosed']['fri'] === "0" ? fri_value = true : fri_value = false
      event['Venue']['DaysClosed']['sat'] === "0" ? sat_value = true : sat_value = false
      event['Venue']['DaysClosed']['sun'] === "0" ? sun_value = true : sun_value = false
      
      Venue.find_or_create_by(
        name: event['Venue']['Name'],
        address: event['Venue']['Address'],
        phone: event['Venue']['Phone'],
        directions: event['Venue']['Access'],
        neighborhood: event['Venue']['Area'],
        kind: event['Venue']['Type'],
        latitude: event['Latitude'],
        longitude: event['Longitude'],
        opening_hour: event['Venue']['OpeningHour'],
        closing_hour: event['Venue']['ClosingHour'],
        open_mon: mon_value,
        open_tue: tue_value,
        open_wed: wed_value,
        open_thu: thu_value,
        open_fri: fri_value,
        open_sat: sat_value,
        open_sun: sun_value,
        #sometimes nil for the following two
        schedule_details: event['Venue']['ScheduleDetails'], 
        schedule_note: event['Venue']['ScheduleNote']
      )
      exhibit_venue_id = Venue.find_by(name: event['Venue']['Name']).id
      Exhibit.create(
        name: event['Name'],
        start_date: event['DateStart'],
        end_date: event['DateEnd'],
        description: event['Description'],
        img_url: event['Image'].last['src'].chomp('-170'),
        price: event['Price'],
        free: free_value,
        reception: party_value,
        #THE DAYS OF THE WEEK WORK BUT NOT THIS?
        # reception_date:
        # reception_start:
        # reception_end:
        permanent: event['PermanentEvent'],
        api_id: event['id'],
        venue_id: exhibit_venue_id
      )
    end
  end

end