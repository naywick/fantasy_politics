# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535714618/Fantasy%20Politics/_102532948_tmay.jpg"
politician = Politician.new(party: "Conservative", first_name: "Theresa", last_name: "May")
politician.remote_photo_url = url
politician.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535714642/Fantasy%20Politics/boris_johnson.jpg"
politician = Politician.new(party: "Conservative", first_name: "Boris", last_name: "Johnson")
politician.remote_photo_url = url
politician.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535714711/Fantasy%20Politics/Sajid_Javid_MP.jpg"
politician = Politician.new(party: "Conservative", first_name: "Sajid", last_name: "Javid")
politician.remote_photo_url = url
politician.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535714773/Fantasy%20Politics/Jacob%20Rees-%20Mogg.jpg"
politician = Politician.new(party: "Conservative", first_name: "Jacob", last_name: "Rees-Mogg")
politician.remote_photo_url = url
politician.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535714754/Fantasy%20Politics/Andrea_Leadsom_crop_2.jpg"
politician = Politician.new(party: "Conservative", first_name: "Andrea", last_name: "Leadsome")
politician.remote_photo_url = url
politician.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535714645/Fantasy%20Politics/jeremy_corbyn.jpg"
politician = Politician.new(party: "Labour", first_name: "Jeremy", last_name: "Corbyn")
politician.remote_photo_url = url
politician.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535714790/Fantasy%20Politics/Tom_Watson.jpg"
politician = Politician.new(party: "Labour", first_name: "Tom", last_name: "Watson")
politician.remote_photo_url = url
politician.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535714809/Fantasy%20Politics/1200px-Official_portrait_of_Emily_Thornberry_crop_2.jpg"
politician = Politician.new(party: "Labour", first_name: "Emily", last_name: "Thornberry")
politician.remote_photo_url = url
politician.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535714833/Fantasy%20Politics/John%20McDonnell.jpg"
politician = Politician.new(party: "Labour", first_name: "John", last_name: "McDonnell")
politician.remote_photo_url = url
politician.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535714849/Fantasy%20Politics/1200px-Official_portrait_of_Ms_Diane_Abbott_crop_2.jpg"
politician = Politician.new(party: "Labour", first_name: "Diane", last_name: "Abbott")
politician.remote_photo_url = url
politician.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535714652/Fantasy%20Politics/nicola_sturgeon.jpg"
politician = Politician.new(party: "SNP", first_name: "Nicola", last_name: "Sturgeon")
politician.remote_photo_url = url
politician.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535714895/Fantasy%20Politics/Deirdre%20Brock.jpg"
politician = Politician.new(party: "SNP", first_name: "Deirdre", last_name: "Brock")
politician.remote_photo_url = url
politician.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535714914/Fantasy%20Politics/4627460.jpg"
politician = Politician.new(party: "SNP", first_name: "Keith", last_name: "Brown")
politician.remote_photo_url = url
politician.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535714929/Fantasy%20Politics/Ian%20Blackford.jpg"
politician = Politician.new(party: "SNP", first_name: "Ian", last_name: "Blackford")
politician.remote_photo_url = url
politician.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535715067/Fantasy%20Politics/Blackman_Kirsty_MP.jpg"
politician = Politician.new(party: "SNP", first_name: "Kirsty", last_name: "Blackman")
politician.remote_photo_url = url
politician.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535715093/Fantasy%20Politics/Sir_Vince_Cable_crop_2.jpg"
politician = Politician.new(party: "Lib Dem", first_name: "Vince", last_name: "Cable")
politician.remote_photo_url = url
politician.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535715114/Fantasy%20Politics/Jo_Swinson_crop_2.jpg"
politician = Politician.new(party: "Lib Dem", first_name: "Jo", last_name: "Swinson")
politician.remote_photo_url = url
politician.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535715175/Fantasy%20Politics/Sal%20Brinton.jpg"
politician = Politician.new(party: "Lib Dem", first_name: "Sal", last_name: "Brinton")
politician.remote_photo_url = url
politician.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535715192/Fantasy%20Politics/Dick%20Newby_crop_2.jpg"
politician = Politician.new(party: "Lib Dem", first_name: "Dick", last_name: "Newby")
politician.remote_photo_url = url
politician.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535715216/Fantasy%20Politics/Catherine%20Bearder.jpg"
politician = Politician.new(party: "Lib Dem", first_name: "Catherine", last_name: "Bearder")
politician.remote_photo_url = url
politician.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535715284/Fantasy%20Politics/Gerard-Batten.jpg"
politician = Politician.new(party: "UKIP", first_name: "Gerard", last_name: "Batten")
politician.remote_photo_url = url
politician.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535715303/Fantasy%20Politics/Z4GFBNWBFFFYZN5HK6YABP6YVQ.jpg"
politician = Politician.new(party: "UKIP", first_name: "Nigel", last_name: "Farage")
politician.remote_photo_url = url
politician.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535715325/Fantasy%20Politics/Mike%20Hookem.jpg"
politician = Politician.new(party: "UKIP", first_name: "Mike", last_name: "Hookem")
politician.remote_photo_url = url
politician.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535715354/Fantasy%20Politics/Douglas%20Carswell.jpg"
politician = Politician.new(party: "UKIP", first_name: "Douglas", last_name: "Carswell")
politician.remote_photo_url = url
politician.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535715385/Fantasy%20Politics/Mark_Reckless_AM__2827889492560_29.jpg"
politician = Politician.new(party: "UKIP", first_name: "Mark", last_name: "Reckless")
politician.remote_photo_url = url
politician.save!

