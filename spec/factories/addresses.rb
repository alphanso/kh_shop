# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :address do
    country "MyString"
    state "MyString"
    city "MyString"
    pincode "MyString"
    latitude "MyString"
    longitude "MyString"
    area "MyString"
    streetName "MyString"
    building "MyString"
  end
end
