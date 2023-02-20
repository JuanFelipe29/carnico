require 'rails_helper'

RSpec.describe "elaborated_product_names/index", type: :view do
  before(:each) do
    assign(:elaborated_product_names, [
      ElaboratedProductName.create!(
        name: "Name"
      ),
      ElaboratedProductName.create!(
        name: "Name"
      )
    ])
  end

  it "renders a list of elaborated_product_names" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
  end
end
