class WineSerializer < ActiveModel::Serializer
  attributes :name, :kind, :country, :maker, :color, :body, :aroma, :score
end