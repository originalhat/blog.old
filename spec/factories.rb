# This will guess the User class
FactoryGirl.define do
  factory :admin do
    email                 "working@girl.com"
    password              "gold-digger"
    password_confirmation "gold-digger"
    first_name            "Arnold"
    last_name             "Brown"
  end
end