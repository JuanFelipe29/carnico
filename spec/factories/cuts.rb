FactoryBot.define do
  factory :cut do
    piece { nil }
    cut_name { nil }
    weight { 1 }
    final_weight { 1 }
    processing_type { "MyString" }
  end
end
