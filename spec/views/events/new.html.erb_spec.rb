require 'spec_helper'

describe "events/new" do
  before(:each) do
    assign(:event, stub_model(Event,
      :society => nil,
      :user => nil,
      :title => "MyString",
      :type => "",
      :location => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new event form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => events_path, :method => "post" do
      assert_select "input#event_society", :name => "event[society]"
      assert_select "input#event_user", :name => "event[user]"
      assert_select "input#event_title", :name => "event[title]"
      assert_select "input#event_type", :name => "event[type]"
      assert_select "input#event_location", :name => "event[location]"
      assert_select "textarea#event_description", :name => "event[description]"
    end
  end
end
