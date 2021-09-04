class User < ApplicationRecord
  before_save { self.email = email.downcase }

  has_many :sightings, foreign_key: 'user_id', class_name: 'Sighting'

  validates :name, presence: true, length: { minimum: 4, maximum: 24 }, uniqueness: { case_sensitive: false }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
                     uniqueness: {case_sensitive: false},
                     length: {maximum: 105}, 
                     format: {with: VALID_EMAIL_REGEX }

  has_secure_password
end
