FactoryBot.define do
  factory :channel do
    income_type { "MyString" }
    family { nil }
    supplier { nil }
    description { "MyText" }
    crotal { "MyString" }
    lot { "MyString" }
    weight { 1 }
    temperature { "MyString" }
    cost { 1 }
    total { 1 }
    slaughter { "2023-02-20" }
    birth { "2023-02-20" }
    user { nil }
  end
end
