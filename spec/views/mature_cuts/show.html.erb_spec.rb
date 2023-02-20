require 'rails_helper'

RSpec.describe "mature_cuts/show", type: :view do
  before(:each) do
    @mature_cut = assign(:mature_cut, MatureCut.create!(
      cut: nil,
      final_weight: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
  end
end
