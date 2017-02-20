class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :suits
  has_many :requests
  has_many :incoming_requests, :through => :suits, :class_name => 'Request', :foreign_key => 'request_id', :source => :request
end
