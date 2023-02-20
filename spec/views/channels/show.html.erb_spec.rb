require 'rails_helper'

RSpec.describe "channels/show", type: :view do
  before(:each) do
    @channel = assign(:channel, Channel.create!(
      income_type: "Income Type",
      family: nil,
      supplier: nil,
      description: "MyText",
      crotal: "Crotal",
      lot: "Lot",
      weight: 2,
      temperature: "Temperature",
      cost: 3,
      total: 4,
      user: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Income Type/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Crotal/)
    expect(rendered).to match(/Lot/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Temperature/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(//)
  end
end
