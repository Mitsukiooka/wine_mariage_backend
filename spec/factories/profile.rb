FactoryBot.define do
  factory :profile do
    user_id { 1 }
    name { 'Mickey' }
    favorite_kind { '白 シャルドネ' }
    total_number { 9 }
  end
end
