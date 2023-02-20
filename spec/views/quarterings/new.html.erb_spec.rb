require 'rails_helper'

RSpec.describe "quarterings/new", type: :view do
  before(:each) do
    assign(:quartering, Quartering.new(
      channel: nil,
      lot: "MyString",
      user: nil
    ))
  end

  it "renders new quartering form" do
    render

    assert_select "form[action=?][method=?]", quarterings_path, "post" do

      assert_select "input[name=?]", "quartering[channel_id]"

      assert_select "input[name=?]", "quartering[lot]"

      assert_select "input[name=?]", "quartering[user_id]"
    end
  end
end
