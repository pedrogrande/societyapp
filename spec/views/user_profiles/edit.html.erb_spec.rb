require 'spec_helper'

describe "user_profiles/edit" do
  before(:each) do
    @user_profile = assign(:user_profile, stub_model(UserProfile,
      :user => nil,
      :sex => "MyString",
      :city => "MyString",
      :country => "MyString",
      :profile_pic => "MyString",
      :about_me => "MyText"
    ))
  end

  it "renders the edit user_profile form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => user_profiles_path(@user_profile), :method => "post" do
      assert_select "input#user_profile_user", :name => "user_profile[user]"
      assert_select "input#user_profile_sex", :name => "user_profile[sex]"
      assert_select "input#user_profile_city", :name => "user_profile[city]"
      assert_select "input#user_profile_country", :name => "user_profile[country]"
      assert_select "input#user_profile_profile_pic", :name => "user_profile[profile_pic]"
      assert_select "textarea#user_profile_about_me", :name => "user_profile[about_me]"
    end
  end
end
