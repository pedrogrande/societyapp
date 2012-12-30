require 'spec_helper'

describe "societies/show" do
  before(:each) do
    @society = assign(:society, stub_model(Society,
      :name => "Name",
      :slug => "Slug"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Slug/)
  end
end
