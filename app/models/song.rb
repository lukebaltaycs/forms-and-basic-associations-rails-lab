class Song < ActiveRecord::Base
  # add associations here
  belongs_to :artists
  belongs_to :genres
  has_many :notes

  def artist_name=(name)
    self.artist = Artist.find_or_create_by(name: name)
  end

  def artist_name
    self.artist ? self.artist.name : nil
  end
end
