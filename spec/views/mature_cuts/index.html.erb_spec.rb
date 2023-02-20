require 'rails_helper'

RSpec.describe "mature_cuts/index", type: :view do
  before(:each) do
    assign(:mature_cuts, [
      MatureCut.create!(
        cut: nil,
        final_weight: 2
      ),
      MatureCut.create!(
        cut: nil,
        final_weight: 2
      )
    ])
  end

  it "renders a list of mature_cuts" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
