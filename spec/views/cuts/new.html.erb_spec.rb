require 'rails_helper'

RSpec.describe "cuts/new", type: :view do
  before(:each) do
    assign(:cut, Cut.new(
      piece: nil,
      cut_name: nil,
      weight: 1,
      final_weight: 1,
      processing_type: "MyString"
    ))
  end

  it "renders new cut form" do
    render

    assert_select "form[action=?][method=?]", cuts_path, "post" do

      assert_select "input[name=?]", "cut[piece_id]"

      assert_select "input[name=?]", "cut[cut_name_id]"

      assert_select "input[name=?]", "cut[weight]"

      assert_select "input[name=?]", "cut[final_weight]"

      assert_select "input[name=?]", "cut[processing_type]"
    end
  end
end
