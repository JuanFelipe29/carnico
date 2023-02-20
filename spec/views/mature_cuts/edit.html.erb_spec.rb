require 'rails_helper'

RSpec.describe "mature_cuts/edit", type: :view do
  before(:each) do
    @mature_cut = assign(:mature_cut, MatureCut.create!(
      cut: nil,
      final_weight: 1
    ))
  end

  it "renders the edit mature_cut form" do
    render

    assert_select "form[action=?][method=?]", mature_cut_path(@mature_cut), "post" do

      assert_select "input[name=?]", "mature_cut[cut_id]"

      assert_select "input[name=?]", "mature_cut[final_weight]"
    end
  end
end
