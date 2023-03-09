require "open-uri"
require "json"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

url = 'https://tmdb.lewagon.com/movie/top_rated'
image_url = 'https://image.tmdb.org/t/p/w500'

results = URI.open(url).read
parsed = JSON.parse(results)

parsed['results'].each do |result|
  Movie.create!(
    title: result['original_title'],
    overview: result['overview'],
    poster_url: "#{image_url}#{result['poster_path']}",
    rating: result['vote_average']
  )
end
