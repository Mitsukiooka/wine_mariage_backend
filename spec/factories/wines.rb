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
