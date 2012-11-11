require 'spec_helper'

describe "creatures/index" do
  before(:each) do
    assign(:creatures, [
      stub_model(Creature,
        :name => "Name",
        :scientific_name => "Scientific Name"
      ),
      stub_model(Creature,
        :name => "Name",
        :scientific_name => "Scientific Name"
      )
    ])
  end

  it "renders a list of creatures" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Scientific Name".to_s, :count => 2
  end
end
