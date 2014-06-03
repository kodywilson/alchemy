require 'spec_helper'

describe "solvents/edit" do
  before(:each) do
    @solvent = assign(:solvent, stub_model(Solvent,
      :name => "MyString",
      :picture => "MyString",
      :level => "MyString"
    ))
  end

  it "renders the edit solvent form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", solvent_path(@solvent), "post" do
      assert_select "input#solvent_name[name=?]", "solvent[name]"
      assert_select "input#solvent_picture[name=?]", "solvent[picture]"
      assert_select "input#solvent_level[name=?]", "solvent[level]"
    end
  end
end
