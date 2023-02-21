FactoryBot.define do
  factory :piece do
    association :quartering
    association :piece_name

    weight { 1 }
    final_weight { 1 }
  end
end
