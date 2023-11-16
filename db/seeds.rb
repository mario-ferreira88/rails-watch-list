puts 'Cleaning database...'
Movie.destroy_all

puts 'Creating movies...'

10.times do
  Movie.create(
    title: Faker::Movie.title,
    overview: Faker::Movie.quote,
    poster_url: Faker::Internet.url,
    rating: Faker::Number.within(range: 0.0..10.0)
  )

  puts 'Finished!'
end
