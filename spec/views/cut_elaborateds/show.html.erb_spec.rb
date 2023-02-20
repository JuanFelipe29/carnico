require 'rails_helper'

RSpec.describe "cut_elaborateds/show", type: :view do
  before(:each) do
    @cut_elaborated = assign(:cut_elaborated, CutElaborated.create!(
      cut: nil,
      elaborated_product_name: nil,
      description: "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Description/)
  end
end
