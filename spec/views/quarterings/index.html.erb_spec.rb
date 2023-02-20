require 'rails_helper'

RSpec.describe "quarterings/index", type: :view do
  before(:each) do
    assign(:quarterings, [
      Quartering.create!(
        channel: nil,
        lot: "Lot",
        user: nil
      ),
      Quartering.create!(
        channel: nil,
        lot: "Lot",
        user: nil
      )
    ])
  end

  it "renders a list of quarterings" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "Lot".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
