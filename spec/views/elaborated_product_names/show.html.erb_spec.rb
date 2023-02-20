require 'rails_helper'

RSpec.describe "elaborated_product_names/show", type: :view do
  before(:each) do
    @elaborated_product_name = assign(:elaborated_product_name, ElaboratedProductName.create!(
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
