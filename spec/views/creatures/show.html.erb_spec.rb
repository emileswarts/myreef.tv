require 'spec_helper'

describe "creatures/show" do
  before(:each) do
    @creature = assign(:creature, stub_model(Creature,
      :name => "Name",
      :scientific_name => "Scientific Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Scientific Name/)
  end
end
