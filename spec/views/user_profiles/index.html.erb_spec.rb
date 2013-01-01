require 'spec_helper'

describe "user_profiles/index" do
  before(:each) do
    assign(:user_profiles, [
      stub_model(UserProfile,
        :user => nil,
        :sex => "Sex",
        :city => "City",
        :country => "Country",
        :profile_pic => "Profile Pic",
        :about_me => "MyText"
      ),
      stub_model(UserProfile,
        :user => nil,
        :sex => "Sex",
        :city => "City",
        :country => "Country",
        :profile_pic => "Profile Pic",
        :about_me => "MyText"
      )
    ])
  end

  it "renders a list of user_profiles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Sex".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "Profile Pic".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
