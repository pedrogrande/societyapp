require 'spec_helper'

describe "user_profiles/show" do
  before(:each) do
    @user_profile = assign(:user_profile, stub_model(UserProfile,
      :user => nil,
      :sex => "Sex",
      :city => "City",
      :country => "Country",
      :profile_pic => "Profile Pic",
      :about_me => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/Sex/)
    rendered.should match(/City/)
    rendered.should match(/Country/)
    rendered.should match(/Profile Pic/)
    rendered.should match(/MyText/)
  end
end
