class Artist < ActiveRecord::Base
  belongs_to :record_label
  has_many :artist_genres
  has_many :genres, through: :artist_genres
end