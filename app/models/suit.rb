class Suit < ApplicationRecord
  belongs_to :user
  has_many :requests
  has_many :reviews
  validates :brand, presence: true
  validates :title, presence: true
  validates :image, presence: true
  validates :jacket_chest, presence: true
  validates :jacket_length, presence: true
  validates :jacket_shoulder_length, presence: true
  validates :jacket_sleeve, presence: true
  validates :jacket_waist, presence: true
  validates :trouser_waist, presence: true
  validates :trouser_length, presence: true
  validates :trouser_front_rise, presence: true
  validates :notes, presence: true
  validates :deposit, presence: true
  validates :daily_price, presence: true
  validates :fit, presence: true
end
