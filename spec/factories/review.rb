FactoryBot.define do
  factory :review do
    association :wine
    association :user
    content { "美味しかった。普段あまり赤は飲まないが飲みやすかった。" }
  end
end
