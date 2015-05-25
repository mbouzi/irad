class Genre < ActiveRecord::Base
  has_many :artist_genres
  has_many :artists, through: :artist_genres

  def downcase_name
    self.name.downcase!
  end

  def strip_whitespace
    self.name.strip!
  end

end