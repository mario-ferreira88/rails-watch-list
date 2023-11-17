require 'httparty'
response = HTTParty.get('https://tmdb.lewagon.com/movie/top_rated')
movies = JSON.parse(response.body)['results']

puts 'Cleaning database...'
Movie.destroy_all

puts 'Creating movies...'

movies.each do |movie|
  Movie.create(
    title: movie['title'],
    poster_url: movie['poster_path'],
    overview: movie['overview'],
    rating: movie['vote_average']
  )
end
puts 'Finished!'
