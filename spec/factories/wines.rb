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
FactoryBot.define do
  factory :wine do
    name        { 'Bread and Butter' }
    kind        { '白 シャルドネ' }
    country     { 'アメリカ カルフォルニア' }
    maker       { 'aaaa' }
    color       { 'きんいろ' }
    body        { '重め' }
    aroma       { 'バター' }
    score       { 10 }
  end
end
