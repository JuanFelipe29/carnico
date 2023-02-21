FactoryBot.define do
  factory :channel do
    association :user
    association :supplier
    association :family

    income_type { "MyString" }
    description { "MyText" }
    crotal { "MyString" }
    lot { "MyString" }
    weight { 1 }
    temperature { "MyString" }
    cost { 1 }
    total { 1 }
    slaughter { "2023-02-20" }
    birth { "2023-02-20" }
  end
end
