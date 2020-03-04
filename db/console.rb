require("pry")
require_relative("../models/album")
require_relative("../models/artist")

Album.delete_all
Artist.delete_all

artist1 = Artist.new({'name' => 'Madonna'})
artist1.save

artist1.name = "Lady Gaga"
artist1.update

artist2 = Artist.new({'name' => 'GunsNRoses'})
artist2.save

artist3 = Artist.new({'name' => 'Radiohead'})
artist3.save

album1 = Album.new({'title' => 'True Blue', 'genre' => 'Pop', 'artist_id' => artist1.id})
album1.save

album2 = Album.new({'title' => 'Appetite for Destruction', 'genre' => 'Hard rock', 'artist_id' => artist2.id})
album2.save


album3 = Album.new({'title' => 'OK Computer', 'genre' => 'Rock', 'artist_id' => artist1.id})
album3.save

album3.title = album2.title
album3.update

binding.pry
nil
