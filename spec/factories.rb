FactoryGirl.define do  
  factory :expense do
    date { Date.today }
    amount 15.5
  end
 
  factory :user do
    name "tester"
    sequence(:email) { |n| "foo#{n}@bar.com" }
    password "secret"
    password_confirmation "secret"
  end
end