require 'spec_helper'

describe "creatures/edit" do
  before(:each) do
    @creature = assign(:creature, stub_model(Creature,
      :name => "MyString",
      :scientific_name => "MyString"
    ))
  end

  it "renders the edit creature form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => creatures_path(@creature), :method => "post" do
      assert_select "input#creature_name", :name => "creature[name]"
      assert_select "input#creature_scientific_name", :name => "creature[scientific_name]"
    end
  end
end
