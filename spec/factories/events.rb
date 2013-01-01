# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    society nil
    user nil
    title "MyString"
    type ""
    location "MyString"
    date "2012-12-31"
    start_time "2012-12-31 15:26:01"
    finish_time "2012-12-31 15:26:01"
    description "MyText"
  end
end
