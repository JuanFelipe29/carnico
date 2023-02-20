require 'rails_helper'

RSpec.describe "cuts/index", type: :view do
  before(:each) do
    assign(:cuts, [
      Cut.create!(
        piece: nil,
        cut_name: nil,
        weight: 2,
        final_weight: 3,
        processing_type: "Processing Type"
      ),
      Cut.create!(
        piece: nil,
        cut_name: nil,
        weight: 2,
        final_weight: 3,
        processing_type: "Processing Type"
      )
    ])
  end

  it "renders a list of cuts" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: "Processing Type".to_s, count: 2
  end
end
