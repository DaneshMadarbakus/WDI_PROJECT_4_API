class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :first_name, :last_name, :profile_img, :address_first_line, :address_second_line, :address_city, :address_postcode, :telephone_no
  has_many :suits
  has_many :reviews
  has_many :reviews_of_my_suits
  has_many :requests
  has_many :incoming_requests
end
