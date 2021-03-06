class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :artworks,
  primary_key: :id,
  foreign_key: :artist_id,
  class_name: :Artwork


end
