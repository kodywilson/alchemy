require 'spec_helper'

describe "reagents/show" do
  before(:each) do
    @reagent = assign(:reagent, stub_model(Reagent,
      :name => "Name",
      :picture => "Picture",
      :trait_1 => "Trait 1",
      :trait_2 => "Trait 2",
      :trait_3 => "Trait 3",
      :trait_4 => "Trait 4"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Picture/)
    rendered.should match(/Trait 1/)
    rendered.should match(/Trait 2/)
    rendered.should match(/Trait 3/)
    rendered.should match(/Trait 4/)
  end
end
