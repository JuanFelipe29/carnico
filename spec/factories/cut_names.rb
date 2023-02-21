FactoryBot.define do
  factory :cut_name do
    association :piece

    name { "MyString" }
  end
end
