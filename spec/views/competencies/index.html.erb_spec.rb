require 'spec_helper'

describe "competencies/index" do
  before(:each) do
    assign(:competencies, [
      stub_model(Competency,
        :number => 1,
        :title => "Title",
        :references => ""
      ),
      stub_model(Competency,
        :number => 1,
        :title => "Title",
        :references => ""
      )
    ])
  end

  it "renders a list of competencies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
