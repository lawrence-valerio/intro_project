# GameGenre.delete_all
# Game.delete_all
# Genre.delete_all

# game = Game.create(title: 'test',
#                    description: 'desc',
#                    release_date: '10-20',
#                    platform: 'pc')

# genre = Genre.create(genre_name: 'action')
# genre2 = Genre.create(genre_name: 'action2')
# genre3 = Genre.create(genre_name: 'action3')

# GameGenre.create(game: game, genre: genre)
# GameGenre.create(game: game, genre: genre2)
# GameGenre.create(game: game, genre: genre3)

# puts Game.count
# puts Genre.count
# puts GameGenre.count

genre = Genre.where(id: '2')

genre.games.create(title: 'test3',
                   description: 'desc3',
                   release_date: '10-11',
                   platform: 'pc')
