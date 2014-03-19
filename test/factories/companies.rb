# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :company do
    name "MyString"
    city "MyString"
    state "MyString"
    industry "MyString"
    size "MyString"
    min_employees 1
    max_employees 1
  end
end
