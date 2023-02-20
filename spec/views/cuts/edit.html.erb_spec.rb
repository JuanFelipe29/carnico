require 'rails_helper'

RSpec.describe "cuts/edit", type: :view do
  before(:each) do
    @cut = assign(:cut, Cut.create!(
      piece: nil,
      cut_name: nil,
      weight: 1,
      final_weight: 1,
      processing_type: "MyString"
    ))
  end

  it "renders the edit cut form" do
    render

    assert_select "form[action=?][method=?]", cut_path(@cut), "post" do

      assert_select "input[name=?]", "cut[piece_id]"

      assert_select "input[name=?]", "cut[cut_name_id]"

      assert_select "input[name=?]", "cut[weight]"

      assert_select "input[name=?]", "cut[final_weight]"

      assert_select "input[name=?]", "cut[processing_type]"
    end
  end
end
