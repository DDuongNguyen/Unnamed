require "faker"

User.destroy_all
Event.destroy_all
Response.destroy_all


15.times do
User.create(
  name: Faker::Movies::HarryPotter.unique.character,
  password: Faker::Internet.unique.password,
  pic_url: Faker::Avatar.unique.image,
  bio: Faker::TvShows::Community.quotes,
  user_name: Faker::Internet.unique.username)
end


15.times do
  Event.create(
    api_id: rand(11..21),
    title: Faker::TvShows::SiliconValley.invention,
    location: Faker::TvShows::ParksAndRec.city,
    snippet: Faker::Books::Lovecraft.sentence(2),
    url: Faker::TvShows::SiliconValley.url,
    email: Faker::Internet.email,
    cost: Faker::Boolean.boolean(0.9),
    cost_description: Faker::Food.description,
    date: Faker::Date.forward(365),
    start_time: Faker::Number.decimal_part(2) )
end


30.times do
  Response.create(
    user_id: User.all.sample.id,
    event_id: Event.all.sample.id,
    guests: rand(1..5))
end

puts " ITS SEEDED 🌱"
