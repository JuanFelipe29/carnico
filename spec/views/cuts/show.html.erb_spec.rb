require 'rails_helper'

RSpec.describe "cuts/show", type: :view do
  before(:each) do
    @cut = assign(:cut, Cut.create!(
      piece: nil,
      cut_name: nil,
      weight: 2,
      final_weight: 3,
      processing_type: "Processing Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Processing Type/)
  end
end
