Genre.destroy_all
Artist.destroy_all
Album.destroy_all

genre_list = [
  "Jazz",
  "Rock",
  "Mongolian Throating",
  "Human",
  "Rich",
  "Poor"
]

#seeding genres
genre_list.each do |title|
  Genre.create( title: title )
end

p "Created #{Genre.count} genres"

#seeding artists
50.times do
  Artist.create!(title: Faker::RockBand.unique.name,
                genre_id: Faker::Number.between(1, 6))
end

p "Created #{Artist.count} artists"

#seeding albums
7200.times do
  Album.create!(title: Faker::Hipster.unique.sentence(5),
                artist_id: Faker::Number.between(1, 50))
end

p "Created #{Album.count} albums"
