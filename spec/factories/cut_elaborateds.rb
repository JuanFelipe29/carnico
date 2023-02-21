FactoryBot.define do
  factory :cut_elaborated do
    association :cut
    association :elaborated_product_name

    description { "MyString" }
  end
end
