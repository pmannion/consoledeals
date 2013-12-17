require 'faker'

email = "email"

FactoryGirl.define do
  factory :user do |f|
   f.email  { Faker::Internet.email }
   f.admin false
  end
end
