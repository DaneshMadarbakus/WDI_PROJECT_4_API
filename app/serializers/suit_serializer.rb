class SuitSerializer < ActiveModel::Serializer
  attributes :id, :image, :title, :brand, :colour, :jacket_chest, :jacket_length, :jacket_shoulder_length, :jacket_sleeve, :jacket_waist, :trouser_waist, :trouser_length, :trouser_front_rise, :notes, :deposit, :daily_price, :fit
  has_one :user
  has_many :requests
  has_many :reviews
end
