class Genre < ActiveRecord::Base
  has_many :artist_genres
  has_many :artists, through: :artist_genres

  def downcase_name
    self.name.downcase!
  end

end