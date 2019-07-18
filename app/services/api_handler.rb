class ApiHandler < ApplicationService
  def new; end

  def neighborhoods
    {
      "Queens": 'queens',
      "Harlem/Bronx": 'harlem_bronx',
      "Williamsburg": 'williamsburg',
      "Dumbo/Other Brooklyn": 'dumbo_brooklyn',
      "Upper East Side": 'upper_east_side',
      "Midtown": 'midtown',
      "Flatiron/Gramercy": 'flatiron_gramercy',
      "East Chelsea": 'chelsea_east',
      "Chelsea 28-33": 'chelsea_28_above',
      "Chelsea 27": 'chelsea_27',
      "Chelsea 26": 'chelsea_26',
      "Chelsea 25": 'chelsea_25',
      "Chelsea 24": 'chelsea_24',
      "Chelsea 23": 'chelsea_23',
      "Chelsea 22": 'chelsea_22',
      "Chelsea 21": 'chelsea_21',
      "Chelsea 20": 'chelsea_20',
      "Chelsea 14-19": 'chelsea_19_below',
      "Villages": 'villages',
      "Soho": 'soho',
      "Lower East Side": 'lower_east_side',
      "Lower Manhattan": 'lower_manhattan'
    }
  end
    
  def exhibits_by_neighborhood(params)
    neighborhood = RestClient.get("http://www.nyartbeat.com/list/event_area_#{params[:neighborhood]}.en.xml")
    create_from_api_call(Crack::XML.parse(neighborhood)['Events']['Event'])
  end

private
  def create_from_api_call(events_array)
    events_array.each do |event|
      next if find_by(api_id: event['id'])
      if event['Price'] == "Free" ? value = true : value = false
      end
        create(
          event_name: event['Name'],
          venue_name: event['Venue']['Name'],
          address: event['Venue']['Address'],
          phone: event['Venue']['Phone'],
          directions: event['Venue']['Access'],
          neighborhood: event['Venue']['Area'],
          opening_hour: event['Venue']['OpeningHour'],
          closing_hour: event['Venue']['ClosingHour'],
          event_description: event['Description'],
          img_url: event['Image'].last['src'].chomp('-170'),
          admission: event['Price'],
          date_start: event['DateStart'],
          date_end: event['DateEnd'],
          api_id: event['id'],
          venue_type: event['Venue']['Type'],
          free: value 
        )
      end
    end
  end


end