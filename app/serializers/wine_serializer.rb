# == Schema Information
#
# Table name: wines
#
#  id         :bigint           not null, primary key
#  aroma      :string(255)      not null
#  body       :string(255)      not null
#  color      :string(255)      not null
#  country    :string(255)      not null
#  kind       :string(255)      not null
#  maker      :string(255)      not null
#  name       :string(255)      not null
#  score      :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Wine Serializer
class WineSerializer < ActiveModel::Serializer
  attributes :name, :kind, :country, :maker, :color, :body, :aroma, :score
end
