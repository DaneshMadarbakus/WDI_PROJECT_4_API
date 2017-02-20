[User, Review, Request, Suit].each(&:destroy_all)

u1 = User.create!(email: 'danesh@danesh.com', profile_img: 'string', password: 'password', password_confirmation: 'password', username: 'theheartbreakkid', telephone_no: '08765456432', first_name: 'Danesh', last_name: 'Madarbakus', address_first_line: 'General Assembly', address_second_line: 'Whitechape', address_city: 'London', address_postcode: 'E1 7PT')

u2 = User.create!(email: 'johnnie@johnnie.com', profile_img: 'string', password: 'password', password_confirmation: 'password', username: 'delamorinierejh', telephone_no: '06789456234', first_name: 'Johnnie', last_name: 'de La Moriniere', address_first_line: ' Knoyle', address_second_line: 'Knoyle Place', address_city: 'Salisbury', address_postcode: 'SP3 6AF')

u1.suits.create(image: 'image', title: 'title', brand: 'suity', colour: 'brown', jacket_chest: '42', jacket_length: '42', jacket_shoulder_length: '42', jacket_sleeve: '42', jacket_waist: '42', trouser_waist: '42', trouser_length: '42', trouser_front_rise: '42', notes: 'bla bla bla suit', deposit: 100, daily_price: 10, fit: 'Skinny')

u2.requests.create!(start_time: Time.now + (60*60*24), end_time: Time.now + (60*60*48), suit_id: 1)

u2.reviews.create!(suit_id: 1, comment: 'was very nice', score: 4)
