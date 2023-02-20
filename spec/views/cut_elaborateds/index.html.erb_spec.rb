require 'rails_helper'

RSpec.describe "cut_elaborateds/index", type: :view do
  before(:each) do
    assign(:cut_elaborateds, [
      CutElaborated.create!(
        cut: nil,
        elaborated_product_name: nil,
        description: "Description"
      ),
      CutElaborated.create!(
        cut: nil,
        elaborated_product_name: nil,
        description: "Description"
      )
    ])
  end

  it "renders a list of cut_elaborateds" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "Description".to_s, count: 2
  end
end
