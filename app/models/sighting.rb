class Sighting < ApplicationRecord
  has_one_attached :image

  belongs_to :user
  belongs_to :flower

    # validates_presence_of :image
  validates :user_id, presence: true
  validates :flower_id, presence: true
end
