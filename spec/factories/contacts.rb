# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :contact do
    type 1
    value "MyString"
    contactable nil
  end
end
