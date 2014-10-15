FactoryGirl.define do
  factory :user do
    name "Test User"
    provider "facebook"
    uid "1234567"

    trait :admin do
      role 'admin'
    end

  end
end
