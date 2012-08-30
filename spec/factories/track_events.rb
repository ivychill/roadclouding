# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :track_event do
    trackee "MyString"
    tracker "MyString"
    trackee_lat "MyString"
    trackee_lng "MyString"
    tracker_lat "MyString"
    tracker_lng "MyString"
  end
end
