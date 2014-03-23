# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :investment do
    amt_invested 1.5
    inv_type "MyString"
    capitalization "MyString"
    funding_round "MyString"
    investmt_date "2014-03-22"
    maturity "2014-03-22"
    conversion_trigger "MyString"
  end
end
