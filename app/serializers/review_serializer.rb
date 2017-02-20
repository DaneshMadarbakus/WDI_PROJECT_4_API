class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :score, :comment, :created_at, :reviewer
  has_one :user
  has_one :suit
end

def reviewer
  UserSerializer.new(self.user).attributes
end
