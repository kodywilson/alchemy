require 'spec_helper'

describe "reagents/edit" do
  before(:each) do
    @reagent = assign(:reagent, stub_model(Reagent,
      :name => "MyString",
      :picture => "MyString",
      :trait_1 => "MyString",
      :trait_2 => "MyString",
      :trait_3 => "MyString",
      :trait_4 => "MyString"
    ))
  end

  it "renders the edit reagent form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", reagent_path(@reagent), "post" do
      assert_select "input#reagent_name[name=?]", "reagent[name]"
      assert_select "input#reagent_picture[name=?]", "reagent[picture]"
      assert_select "input#reagent_trait_1[name=?]", "reagent[trait_1]"
      assert_select "input#reagent_trait_2[name=?]", "reagent[trait_2]"
      assert_select "input#reagent_trait_3[name=?]", "reagent[trait_3]"
      assert_select "input#reagent_trait_4[name=?]", "reagent[trait_4]"
    end
  end
end
