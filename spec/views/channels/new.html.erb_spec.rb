require 'rails_helper'

RSpec.describe "channels/new", type: :view do
  before(:each) do
    assign(:channel, Channel.new(
      income_type: "MyString",
      family: nil,
      supplier: nil,
      description: "MyText",
      crotal: "MyString",
      lot: "MyString",
      weight: 1,
      temperature: "MyString",
      cost: 1,
      total: 1,
      user: nil
    ))
  end

  it "renders new channel form" do
    render

    assert_select "form[action=?][method=?]", channels_path, "post" do

      assert_select "input[name=?]", "channel[income_type]"

      assert_select "input[name=?]", "channel[family_id]"

      assert_select "input[name=?]", "channel[supplier_id]"

      assert_select "textarea[name=?]", "channel[description]"

      assert_select "input[name=?]", "channel[crotal]"

      assert_select "input[name=?]", "channel[lot]"

      assert_select "input[name=?]", "channel[weight]"

      assert_select "input[name=?]", "channel[temperature]"

      assert_select "input[name=?]", "channel[cost]"

      assert_select "input[name=?]", "channel[total]"

      assert_select "input[name=?]", "channel[user_id]"
    end
  end
end
