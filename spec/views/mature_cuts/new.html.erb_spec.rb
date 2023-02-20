require 'rails_helper'

RSpec.describe "mature_cuts/new", type: :view do
  before(:each) do
    assign(:mature_cut, MatureCut.new(
      cut: nil,
      final_weight: 1
    ))
  end

  it "renders new mature_cut form" do
    render

    assert_select "form[action=?][method=?]", mature_cuts_path, "post" do

      assert_select "input[name=?]", "mature_cut[cut_id]"

      assert_select "input[name=?]", "mature_cut[final_weight]"
    end
  end
end
