# == Schema Information
#
# Table name: wines
#
#  id              :bigint           not null, primary key
#  country         :string(255)      not null
#  kind            :integer          not null
#  maker           :string(255)      not null
#  name            :string(255)      not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  wine_variety_id :bigint           not null
#
# Indexes
#
#  index_wines_on_wine_variety_id  (wine_variety_id)
#
# Foreign Keys
#
#  fk_rails_...  (wine_variety_id => wine_varieties.id)
#
class WineSerializer < ActiveModel::Serializer
  attributes :name, :kind, :country, :maker, :wine_variety_name

  def wine_variety_name
    object.wine_variety.name
  end
end
