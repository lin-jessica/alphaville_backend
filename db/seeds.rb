User.destroy_all
Venue.destroy_all
Exhibit.destroy_all

#user
jlin = User.find_or_create_by(first_name: 'Jessica', last_name: 'Lin', email: 'jessicaa.lin@gmail.com', bio: "Now I'm ready to start", mobile_num: "2019686863")
nacho = User.find_or_create_by(first_name: 'Nacho', last_name: 'Valle', email: 'nachovalle71@gmail.com', bio: "TCB", mobile_num: "3473371489")

#venue
wework = Venue.find_or_create_by(name: 'WeWork', address: '25 Broadway', directions: 'Right here', neighborhood:'Lower Manhattan', latitude: 40.70641105205331, longitude: -74.01408324370628)
foxhole = Venue.find_or_create_by(name: 'Fox Hole', address: '395 Ocean', directions: 'Follow your heart', neighborhood:'DUMBO, other Brooklyn', latitude: 40.65326526946455, longitude: -73.96164785940354)

#exhibit
mod57 = Exhibit.find_or_create_by(name: "Boolean Assange's Cat's Science Fair", free: true, venue_id: wework.id, api_id: '1')
fiesta = Exhibit.find_or_create_by(name: "Spanish Dinner Party", free: true, venue_id: foxhole.id, api_id: '2')

#user followed venue
UserFollowedVenue.find_or_create_by(user_id: jlin.id, venue_id: foxhole.id)

#user saved exhibit
UserSavedExhibit.find_or_create_by(user_id: jlin.id, exhibit_id: mod57.id)

