require 'spec_helper'

describe "events/show" do
  before(:each) do
    @event = assign(:event, stub_model(Event,
      :society => nil,
      :user => nil,
      :title => "Title",
      :type => "Type",
      :location => "Location",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/Title/)
    rendered.should match(/Type/)
    rendered.should match(/Location/)
    rendered.should match(/MyText/)
  end
end
