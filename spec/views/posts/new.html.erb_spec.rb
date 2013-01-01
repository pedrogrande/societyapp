require 'spec_helper'

describe "posts/new" do
  before(:each) do
    assign(:post, stub_model(Post,
      :title => "MyString",
      :content => "MyText",
      :user => nil,
      :type => "",
      :society => nil
    ).as_new_record)
  end

  it "renders new post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => posts_path, :method => "post" do
      assert_select "input#post_title", :name => "post[title]"
      assert_select "textarea#post_content", :name => "post[content]"
      assert_select "input#post_user", :name => "post[user]"
      assert_select "input#post_type", :name => "post[type]"
      assert_select "input#post_society", :name => "post[society]"
    end
  end
end
