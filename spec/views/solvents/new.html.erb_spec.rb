require 'spec_helper'

describe "solvents/new" do
  before(:each) do
    assign(:solvent, stub_model(Solvent,
      :name => "MyString",
      :picture => "MyString",
      :level => "MyString"
    ).as_new_record)
  end

  it "renders new solvent form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", solvents_path, "post" do
      assert_select "input#solvent_name[name=?]", "solvent[name]"
      assert_select "input#solvent_picture[name=?]", "solvent[picture]"
      assert_select "input#solvent_level[name=?]", "solvent[level]"
    end
  end
end
