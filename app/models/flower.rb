class Flower < ApplicationRecord
  has_one_attached :image
  has_many :sightings, foreign_key: 'flower_id', class_name: 'Sighting'

  validates_presence_of :image
  validates :name, presence: true, length: { minimum: 6, maximum: 80 }
  validates :description, presence: true, length: { minimum: 10, maximum: 300 }
end
