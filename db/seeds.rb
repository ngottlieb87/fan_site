Genre.destroy_all
Artist.destroy_all
genre_list = [
  "Jazz",
  "Rock",
  "Mongolian Throating",
  "Human",
  "Rich",
  "Poor"
]

genre_list.each do |title|
  Genre.create( title: title )
end

p "Created #{Genre.count} genres"

#seeding artists
50.times do |index|
  Artist.create!(title: Faker::RockBand.name, genre_id: Faker::Number.between(1, 6))
end

p "Created #{Artist.count} artists"
