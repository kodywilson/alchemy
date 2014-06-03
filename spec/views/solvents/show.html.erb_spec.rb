require 'spec_helper'

describe "solvents/show" do
  before(:each) do
    @solvent = assign(:solvent, stub_model(Solvent,
      :name => "Name",
      :picture => "Picture",
      :level => "Level"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Picture/)
    rendered.should match(/Level/)
  end
end
