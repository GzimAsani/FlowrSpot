class Sighting < ApplicationRecord
  has_one_attached :image

  belongs_to :user
  belongs_to :flower
  has_many :likes, foreign_key: 'sighting_id', class_name: 'Like', dependent: :destroy

  validates_presence_of :image
  validates :user_id, presence: true
  validates :flower_id, presence: true

  def question
    url = "https://opentdb.com/api.php?amount=1"
    response = RestClient.get(url)
    return response 
  end
end
