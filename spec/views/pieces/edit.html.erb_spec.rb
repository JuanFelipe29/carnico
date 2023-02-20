require 'rails_helper'

RSpec.describe "pieces/edit", type: :view do
  before(:each) do
    @piece = assign(:piece, Piece.create!(
      quartering: nil,
      piece_name: nil,
      weight: 1,
      final_weight: 1
    ))
  end

  it "renders the edit piece form" do
    render

    assert_select "form[action=?][method=?]", piece_path(@piece), "post" do

      assert_select "input[name=?]", "piece[quartering_id]"

      assert_select "input[name=?]", "piece[piece_name_id]"

      assert_select "input[name=?]", "piece[weight]"

      assert_select "input[name=?]", "piece[final_weight]"
    end
  end
end
