class Flower < ApplicationRecord
  has_one_attached :image

  validates_presence_of :image
  validates :title, presence: true, length: { minimum: 6, maximum: 80 }
  validates :description, presence: true, length: { minimum: 10, maximum: 300 }
end
