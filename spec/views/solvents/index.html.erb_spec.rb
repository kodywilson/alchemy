require 'spec_helper'

describe "solvents/index" do
  before(:each) do
    assign(:solvents, [
      stub_model(Solvent,
        :name => "Name",
        :picture => "Picture",
        :level => "Level"
      ),
      stub_model(Solvent,
        :name => "Name",
        :picture => "Picture",
        :level => "Level"
      )
    ])
  end

  it "renders a list of solvents" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Picture".to_s, :count => 2
    assert_select "tr>td", :text => "Level".to_s, :count => 2
  end
end
