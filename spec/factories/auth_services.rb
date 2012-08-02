# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :auth_service do
    user_id 1
    provider "MyString"
    uid "MyString"
    uname "MyString"
    uemail "MyString"
  end
end
