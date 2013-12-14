require 'faker'

FactoryGirl.define do
  factory :user do |f|
   f.email  { Faker::Name.email }

  end
end