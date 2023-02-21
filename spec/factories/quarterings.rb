FactoryBot.define do
  factory :quartering do
    association :channel
    association :user

    lot { "MyString" }
    date { "2023-02-20 13:05:18" }
  end
end
