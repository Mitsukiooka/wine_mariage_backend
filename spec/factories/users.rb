FactoryBot.define do
  factory :user do
    name { 'Mickey' }
    email { 'sample@gmail.com' }
    role { 1 }
    password { 'asdfcweefgeww' }
  end
end
