require 'rails_helper'

RSpec.describe "pieces/show", type: :view do
  before(:each) do
    @piece = assign(:piece, Piece.create!(
      quartering: nil,
      piece_name: nil,
      weight: 2,
      final_weight: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
