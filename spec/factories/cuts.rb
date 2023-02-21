FactoryBot.define do
  factory :cut do
    association :piece
    association :cut_name

    weight { 1 }
    final_weight { 1 }
  end
end
