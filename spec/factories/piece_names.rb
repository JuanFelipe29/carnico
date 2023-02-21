FactoryBot.define do
  factory :piece_name do
    association :family

    name { "MyString" }
  end
end
