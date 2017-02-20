class Request < ApplicationRecord
  belongs_to :user
  belongs_to :suit
  validates :start_time, presence: true
  validates :end_time, presence: true
end
