require 'faker'

10.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category:  ["chinese", "italian", "japanese", "french", "belgian"].sample,
  )
  rand(1..5).times do
    Review.create(
      content: Faker::Quote.famous_last_words,
      rating:  rand(1..5),
      restaurant_id: rand(1..10)
    )
  end
end
