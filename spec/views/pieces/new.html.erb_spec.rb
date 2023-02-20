require 'rails_helper'

RSpec.describe "pieces/new", type: :view do
  before(:each) do
    assign(:piece, Piece.new(
      quartering: nil,
      piece_name: nil,
      weight: 1,
      final_weight: 1
    ))
  end

  it "renders new piece form" do
    render

    assert_select "form[action=?][method=?]", pieces_path, "post" do

      assert_select "input[name=?]", "piece[quartering_id]"

      assert_select "input[name=?]", "piece[piece_name_id]"

      assert_select "input[name=?]", "piece[weight]"

      assert_select "input[name=?]", "piece[final_weight]"
    end
  end
end
