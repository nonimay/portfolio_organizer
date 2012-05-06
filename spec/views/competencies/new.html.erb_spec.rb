require 'spec_helper'

describe "competencies/new" do
  before(:each) do
    assign(:competency, stub_model(Competency,
      :number => "MyString",
      :title => "MyString",
      :section => nil
    ).as_new_record)
  end

  it "renders new competency form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => competencies_path, :method => "post" do
      assert_select "input#competency_number", :name => "competency[number]"
      assert_select "input#competency_title", :name => "competency[title]"
      assert_select "input#competency_section", :name => "competency[section]"
    end
  end
end
