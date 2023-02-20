require 'rails_helper'

RSpec.describe "elaborated_product_names/new", type: :view do
  before(:each) do
    assign(:elaborated_product_name, ElaboratedProductName.new(
      name: "MyString"
    ))
  end

  it "renders new elaborated_product_name form" do
    render

    assert_select "form[action=?][method=?]", elaborated_product_names_path, "post" do

      assert_select "input[name=?]", "elaborated_product_name[name]"
    end
  end
end
