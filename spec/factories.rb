FactoryGirl.define do
  factory :user do
    name "tester"
    sequence(:email) { |n| "foo#{n}@bar.com" }
    password "secret"
    password_confirmation "secret"
  end
end