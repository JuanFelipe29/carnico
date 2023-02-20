require 'rails_helper'

RSpec.describe "quarterings/edit", type: :view do
  before(:each) do
    @quartering = assign(:quartering, Quartering.create!(
      channel: nil,
      lot: "MyString",
      user: nil
    ))
  end

  it "renders the edit quartering form" do
    render

    assert_select "form[action=?][method=?]", quartering_path(@quartering), "post" do

      assert_select "input[name=?]", "quartering[channel_id]"

      assert_select "input[name=?]", "quartering[lot]"

      assert_select "input[name=?]", "quartering[user_id]"
    end
  end
end
