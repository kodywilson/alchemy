require 'spec_helper'

describe "reagents/new" do
  before(:each) do
    assign(:reagent, stub_model(Reagent,
      :name => "MyString",
      :picture => "MyString",
      :trait_1 => "MyString",
      :trait_2 => "MyString",
      :trait_3 => "MyString",
      :trait_4 => "MyString"
    ).as_new_record)
  end

  it "renders new reagent form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", reagents_path, "post" do
      assert_select "input#reagent_name[name=?]", "reagent[name]"
      assert_select "input#reagent_picture[name=?]", "reagent[picture]"
      assert_select "input#reagent_trait_1[name=?]", "reagent[trait_1]"
      assert_select "input#reagent_trait_2[name=?]", "reagent[trait_2]"
      assert_select "input#reagent_trait_3[name=?]", "reagent[trait_3]"
      assert_select "input#reagent_trait_4[name=?]", "reagent[trait_4]"
    end
  end
end
