### Active Record Query Interface Assignment

### Provide one or more Active Record queries that retrieve the requested data
### below each of the following questions:


1a) Find the genre with the name "Hip Hop/Rap".

  Genre.find_by(name: "Hip Hop/Rap")

1b) Count how many tracks belong to the "Hip Hop/Rap" genre

 Track.where(genre_id: 17).count


2) Find the total amount of time required to listen to all the tracks in the database.

irb(main):032:0> Track.where(genre_id: 17).count



3a) Find the highest price of any track that has the media type "MPEG audio file".

Track.where(media_type_id: 4).order(:unit_price).last



3b) Find the name of the most expensive track that has the media type "MPEG audio file".

irb(main):091:0> Track.where(media_type_id: 4).order(:unit_price).last



4) Find the 2 oldest artists.

irb(main):092:0> Artist.order(:created_at).limit(2)


### Stretch Exercise (Active Record Query Interface)


1) Find all the albums whose titles start with B.

irb(main):109:0> Album.where("title LIKE 'B%'")
