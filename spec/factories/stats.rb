# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :stat do
    stat_name "MyString"
    sport nil
    position nil
    value 1
  end
end
