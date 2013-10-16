# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :area_code do
    code 1
    latitude 1.5
    longitude 1.5
    gmaps false
    city "MyString"
    state "MyString"
    population 1
  end
end
