# Profile Serializer
class ProfileSerializer < ActiveModel::Serializer
  attributes :name, :favorite_kind, :total_number
end
