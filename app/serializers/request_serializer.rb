class RequestSerializer < ActiveModel::Serializer
  attributes :id, :start_time, :end_time, :requester
  has_one :user
  has_one :suit
end


def requester
  UserSerializer.new(self.user).attributes
end
