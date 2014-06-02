require 'spec_helper'

describe "reagents/index" do
  before(:each) do
    assign(:reagents, [
      stub_model(Reagent,
        :name => "Name",
        :picture => "Picture",
        :trait_1 => "Trait 1",
        :trait_2 => "Trait 2",
        :trait_3 => "Trait 3",
        :trait_4 => "Trait 4"
      ),
      stub_model(Reagent,
        :name => "Name",
        :picture => "Picture",
        :trait_1 => "Trait 1",
        :trait_2 => "Trait 2",
        :trait_3 => "Trait 3",
        :trait_4 => "Trait 4"
      )
    ])
  end

  it "renders a list of reagents" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Picture".to_s, :count => 2
    assert_select "tr>td", :text => "Trait 1".to_s, :count => 2
    assert_select "tr>td", :text => "Trait 2".to_s, :count => 2
    assert_select "tr>td", :text => "Trait 3".to_s, :count => 2
    assert_select "tr>td", :text => "Trait 4".to_s, :count => 2
  end
end
