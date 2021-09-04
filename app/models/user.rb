class User < ApplicationRecord
  has_secure_password
  has_many :sightings, foreign_key: 'user_id', class_name: 'Sighting'
end
