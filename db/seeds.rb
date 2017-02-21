[Review, Request, Suit, User].each(&:destroy_all)

u1 = User.create!(email: 'danesh@danesh.com', profile_img: 'http://scontent.cdninstagram.com/t51.2885-15/s480x480/e35/13713975_1570935016543603_921887456_n.jpg', password: 'password', password_confirmation: 'password', username: 'theheartbreakkid', telephone_no: '08765456432', first_name: 'Danesh', last_name: 'Madarbakus', address_first_line: 'General Assembly', address_second_line: 'Whitechape', address_city: 'London', address_postcode: 'E1 7PT')

u2 = User.create!(email: 'johnnie@johnnie.com', profile_img: 'https://media.licdn.com/mpr/mpr/shrinknp_200_200/AAEAAQAAAAAAAAhAAAAAJDI3OGNhMWEwLTQxMGQtNGEyYS05NWY3LWU3MWJhZjEzOWM3MA.jpg', password: 'password', password_confirmation: 'password', username: 'delamorinierejh', telephone_no: '06789456234', first_name: 'Johnnie', last_name: 'de La Moriniere', address_first_line: 'Knoyle', address_second_line: 'Knoyle Place', address_city: 'Salisbury', address_postcode: 'SP3 6AF')

u3 = User.create!(email: 'mike@mike.com', profile_img: 'https://media.licdn.com/mpr/mpr/shrinknp_200_200/AAEAAQAAAAAAAAlgAAAAJGI2NTU3MDljLTYzNzYtNGY1ZC04ZDRlLTBkMWVhM2Q5NTlmYw.jpg', password: 'password', password_confirmation: 'password', username: 'mikeymike', telephone_no: '0909090909', first_name: 'Mike', last_name: 'Grandison', address_first_line: 'Bel', address_second_line: 'Air', address_city: 'Los Angeles', address_postcode: '505 ASA')

u4 = User.create!(email: 'musty@musty.com', profile_img: 'http://i.imgur.com/JcLUqXd.jpg', password: 'password', password_confirmation: 'password', username: 'musty4lyf', telephone_no: '0808080808', first_name: 'Musty', last_name: 'Miah', address_first_line: 'Willesden', address_second_line: 'Green', address_city: 'London', address_postcode: 'NW2 1AA')

u5 = User.create!(email: 'jm@jm.com', profile_img: 'https://pbs.twimg.com/media/C5MgfO7WIAABXSR.jpg', password: 'password', password_confirmation: 'password', username: 'jman', telephone_no: '070707070707', first_name: 'Jean', last_name: 'McGhee', address_first_line: 'Thousand', address_second_line: 'Oaks', address_city: 'Los Angeles', address_postcode: '91319')

u1.suits.create(image: 'http://cdn.yoox.biz/49/49221879bd_15_n_f.jpg', title: 'Fresh Armani Suit', brand: 'Armani', colour: 'Navy', jacket_chest: '42', jacket_length: '42', jacket_shoulder_length: '32', jacket_sleeve: '32', jacket_waist: '38', trouser_waist: '38', trouser_length: '38', trouser_front_rise: '38', notes: 'Brand new Armani suit', deposit: 500, daily_price: 30, fit: 'Skinny')

u1.suits.create(image: 'http://cdn.yoox.biz/49/49221711OV_11_n_f.jpg', title: 'Suave Armani Suit', brand: 'Armani', colour: 'black', jacket_chest: '42', jacket_length: '42', jacket_shoulder_length: '32', jacket_sleeve: '32', jacket_waist: '38', trouser_waist: '38', trouser_length: '38', trouser_front_rise: '38', notes: 'Good for weddings', deposit: 550, daily_price: 35, fit: 'Skinny')

u1.suits.create(image: 'https://www.reiss.com/media/product/images/019/046/31-1-250x287x85.jpg', title: 'Smart', brand: 'Reiss', colour: 'blue', jacket_chest: '42', jacket_length: '42', jacket_shoulder_length: '32', jacket_sleeve: '32', jacket_waist: '38', trouser_waist: '38', trouser_length: '38', trouser_front_rise: '38', notes: 'Good for casual and formal occasions', deposit: 450, daily_price: 30, fit: 'Slim')

u2.suits.create(image: 'https://i1.adis.ws/i/tom_ford/31YL4C-922R70_GRY_OS_A?$pdp_hero_mob$.jpg', title: 'Tom Ford', brand: 'suity', colour: 'brown', jacket_chest: '46', jacket_length: '46', jacket_shoulder_length: '46', jacket_sleeve: '48', jacket_waist: '42', trouser_waist: '42', trouser_length: '52', trouser_front_rise: '42', notes: 'I dont pop molly I rock Tom Ford', deposit: 500, daily_price: 40, fit: 'Skinny')

u5.suits.create(image: 'https://media.gucci.com/style/DarkGray_South_0_160_540x540/1459879208/406135_Z491B_4251_001_100_0000_Light-Monaco-cotton-wool-jacquard-suit.jpg', title: 'Gucci Kingpin Suit', brand: 'Gucci', colour: 'blue', jacket_chest: '42', jacket_length: '42', jacket_shoulder_length: '38', jacket_sleeve: '38', jacket_waist: '38', trouser_waist: '38', trouser_length: '38', trouser_front_rise: '38', notes: 'Once worn by McGregor himself', deposit: 700, daily_price: 45, fit: 'Skinny')

u5.suits.create(image: 'http://demandware.edgesuite.net/sits_pod37/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw5db663be/original/90_A72391-A220833_A616_10_SingleBreastedWoolBlendSuit-Suits-versace-online-store_0_0.png', title: 'All About Versace', brand: 'Versace', colour: 'Blue', jacket_chest: '42', jacket_length: '42', jacket_shoulder_length: '38', jacket_sleeve: '38', jacket_waist: '38', trouser_waist: '38', trouser_length: '38', trouser_front_rise: '38', notes: 'Now its all about Versace you catting my style!', deposit: 580, daily_price: 40, fit: 'Skinny')

u2.requests.create!(start_time: Time.now + (60*60*24), end_time: Time.now + (60*60*48), suit_id: 1)

u2.reviews.create!(suit_id: 1, comment: 'was very nice', score: 4)

u3.reviews.create!(suit_id: 1, comment: 'Fits well! very clean!', score: 4)

u2.reviews.create!(suit_id: 5, comment: 'Made me feel like a boss don! highly reccomend!', score: 4)

u4.reviews.create!(suit_id: 6, comment: 'really good fit! I am impressed everyone when I wore this', score: 4)

u5.reviews.create!(suit_id: 4, comment: 'Cool suit by Johnnie! I reccomend!', score: 4)

u4.reviews.create!(suit_id: 4, comment: 'Good git! clean! fresh! I reccomend!', score: 4)

u4.reviews.create!(suit_id: 2, comment: 'The Heartbreak Kid knows his stuff when it comes to Suits! This was dapper!', score: 4)
