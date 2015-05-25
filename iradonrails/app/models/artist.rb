class Artist < ActiveRecord::Base
  belongs_to :record_label
  has_many :artist_genres
  has_many :genres, through: :artist_genres

  def all_artist_genres
    if self.genres.count < 1
      'add genres'
    else
      self.genres.map{|genre|genre.name}.join(', ')
    end
  end

end