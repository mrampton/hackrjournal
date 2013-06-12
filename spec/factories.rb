FactoryGirl.define do
  factory :user do
    name    "Mark Rampton"
    email   "mrampton@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end