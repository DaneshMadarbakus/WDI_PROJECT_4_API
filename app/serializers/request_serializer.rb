class RequestSerializer < ActiveModel::Serializer
  attributes :id, :start_time, :end_time
  has_one :user
  has_one :suit
end
