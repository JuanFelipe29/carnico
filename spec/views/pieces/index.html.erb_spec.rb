require 'rails_helper'

RSpec.describe "pieces/index", type: :view do
  before(:each) do
    assign(:pieces, [
      Piece.create!(
        quartering: nil,
        piece_name: nil,
        weight: 2,
        final_weight: 3
      ),
      Piece.create!(
        quartering: nil,
        piece_name: nil,
        weight: 2,
        final_weight: 3
      )
    ])
  end

  it "renders a list of pieces" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
  end
end
