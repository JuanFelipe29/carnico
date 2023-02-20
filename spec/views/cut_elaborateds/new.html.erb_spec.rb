require 'rails_helper'

RSpec.describe "cut_elaborateds/new", type: :view do
  before(:each) do
    assign(:cut_elaborated, CutElaborated.new(
      cut: nil,
      elaborated_product_name: nil,
      description: "MyString"
    ))
  end

  it "renders new cut_elaborated form" do
    render

    assert_select "form[action=?][method=?]", cut_elaborateds_path, "post" do

      assert_select "input[name=?]", "cut_elaborated[cut_id]"

      assert_select "input[name=?]", "cut_elaborated[elaborated_product_name_id]"

      assert_select "input[name=?]", "cut_elaborated[description]"
    end
  end
end
