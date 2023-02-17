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
