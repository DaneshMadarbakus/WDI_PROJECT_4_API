class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :address_first_line, presence: true
  validates :address_postcode, presence: true
  validates :address_city, presence: true
  validates :username, presence: true, uniqueness: true
  has_many :suits
  has_many :requests
  has_many :incoming_requests, :through => :suits, :class_name => 'Request', :foreign_key => 'request_id', :source => :requests
  has_many :reviews
  has_many :reviews_of_my_suits, :through => :suits, :class_name => 'Review', :foreign_key => 'review_id', :source => :reviews
end
