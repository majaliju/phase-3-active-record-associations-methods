class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
  end

  def artist_count
    self.artists.count
  end

  # found this one via https://www.brianstorti.com/understanding-ruby-idiom-map-with-symbol/
  # have to review this one more; dont fully understand it
  def all_artist_names
    self.artists.map(&:name)
  end
end
