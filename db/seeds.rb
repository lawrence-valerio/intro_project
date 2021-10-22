require 'net/http'
require 'json'

GameGenre.destroy_all
GamePublisher.destroy_all
Game.destroy_all
Genre.destroy_all
Publisher.destroy_all

url = 'https://www.freetogame.com/api/games'
uri = URI(url)
response = Net::HTTP.get(uri)
apiData = JSON.parse(response)

apiData.each do |freeGame|
  game = Game.create(
    title: freeGame['title'],
    description: freeGame['short_description'],
    release_date: freeGame['release_date'],
    platform: freeGame['platform']
  )

  genre = Genre.find_or_create_by(
    genre_name: freeGame['genre']
  )

  publisher = Publisher.find_or_create_by(
    publisher_name: freeGame['publisher']
  )

  GameGenre.create(game: game, genre: genre)
  GamePublisher.create(game: game, publisher: publisher)
end
