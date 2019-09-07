# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

trip_name = ['The Best Trip Ever', 'Trip To The Moon', 'Cross Country', 'Cruise']

4.times do
  trip = Trip.create(
    name: trip_name.sample,
    start_date: Faker::Date.forward(days: 90),
    end_date: Faker::Date.forward(days: 90) #=> "Wed, 24 Sep 2014" 
    )
    # physician will create 10 physicians, then 
    # it will generate 10 patients per physican
    # 10 appoints for each physician
    5.times do 
      location = Location.create(
        name: Faker::Address.state,
        days: Faker::Number.within(range: 1..20),
        trip_id: trip.id
      )
     Address.create(
      street: Faker::Address.street_address,
      city: Faker::Address.city,
      state: Faker::Address.state,
      zip: Faker::Address.zip ,
      location_id: location.id
      
      )
      
      
  end
end

puts 'Data seeded.'