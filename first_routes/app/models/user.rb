class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true
  
  has_many :pieces,
    foreign_key: :artist_id,
    class_name: :Artwork

  
end