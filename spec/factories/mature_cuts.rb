FactoryBot.define do
  factory :mature_cut do
    association :cut

    start_date { "2023-02-20" }
    end_date { "2023-02-20" }
    final_weight { 1 }
  end
end
