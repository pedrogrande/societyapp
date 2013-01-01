# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user_profile do
    user nil
    dob "2012-12-31"
    sex "MyString"
    city "MyString"
    country "MyString"
    profile_pic "MyString"
    about_me "MyText"
  end
end
