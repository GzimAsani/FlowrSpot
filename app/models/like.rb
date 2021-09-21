class Like < ApplicationRecord
  belongs_to :user
  belongs_to :sighting

  validates :user_id, presence: true
  validates :sighting_id, presence: true
end
