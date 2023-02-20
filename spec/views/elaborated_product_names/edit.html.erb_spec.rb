require 'rails_helper'

RSpec.describe "elaborated_product_names/edit", type: :view do
  before(:each) do
    @elaborated_product_name = assign(:elaborated_product_name, ElaboratedProductName.create!(
      name: "MyString"
    ))
  end

  it "renders the edit elaborated_product_name form" do
    render

    assert_select "form[action=?][method=?]", elaborated_product_name_path(@elaborated_product_name), "post" do

      assert_select "input[name=?]", "elaborated_product_name[name]"
    end
  end
end
