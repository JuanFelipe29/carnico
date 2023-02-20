require 'rails_helper'

RSpec.describe "channels/index", type: :view do
  before(:each) do
    assign(:channels, [
      Channel.create!(
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
      ),
      Channel.create!(
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
      )
    ])
  end

  it "renders a list of channels" do
    render
    assert_select "tr>td", text: "Income Type".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "Crotal".to_s, count: 2
    assert_select "tr>td", text: "Lot".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Temperature".to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
