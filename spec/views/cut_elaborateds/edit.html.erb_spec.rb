require 'rails_helper'

RSpec.describe "cut_elaborateds/edit", type: :view do
  before(:each) do
    @cut_elaborated = assign(:cut_elaborated, CutElaborated.create!(
      cut: nil,
      elaborated_product_name: nil,
      description: "MyString"
    ))
  end

  it "renders the edit cut_elaborated form" do
    render

    assert_select "form[action=?][method=?]", cut_elaborated_path(@cut_elaborated), "post" do

      assert_select "input[name=?]", "cut_elaborated[cut_id]"

      assert_select "input[name=?]", "cut_elaborated[elaborated_product_name_id]"

      assert_select "input[name=?]", "cut_elaborated[description]"
    end
  end
end
