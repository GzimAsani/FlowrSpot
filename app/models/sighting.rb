class Sighting < ApplicationRecord
  validates_presence_of :image
  has_one_attached :image

  belongs_to :user
  belongs_to :flower

  validates :user_id, presence: true
  validates :flower_id, presence: true
end
