require 'spec_helper'

describe "creatures/new" do
  before(:each) do
    assign(:creature, stub_model(Creature,
      :name => "MyString",
      :scientific_name => "MyString"
    ).as_new_record)
  end

  it "renders new creature form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => creatures_path, :method => "post" do
      assert_select "input#creature_name", :name => "creature[name]"
      assert_select "input#creature_scientific_name", :name => "creature[scientific_name]"
    end
  end
end
