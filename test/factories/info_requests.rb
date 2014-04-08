# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :info_request do
    name "MyString"
    email "MyString"
    phone "MyString"
    subject "MyString"
    message "MyText"
  end
end
