class Review < ApplicationRecord
  belongs_to :user
  belongs_to :suit
  validates :suit_id, presence: true
  validates :score, presence: true, :inclusion => 1..5
  validates :comment, presence: true, allow_blank: false, length: { maximum: 450 }
end
