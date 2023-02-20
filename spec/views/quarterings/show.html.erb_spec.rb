require 'rails_helper'

RSpec.describe "quarterings/show", type: :view do
  before(:each) do
    @quartering = assign(:quartering, Quartering.create!(
      channel: nil,
      lot: "Lot",
      user: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Lot/)
    expect(rendered).to match(//)
  end
end
