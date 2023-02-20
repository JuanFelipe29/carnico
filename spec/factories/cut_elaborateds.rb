FactoryBot.define do
  factory :cut_elaborated do
    cut { nil }
    elaborated_product_name { nil }
    description { "MyString" }
  end
end
