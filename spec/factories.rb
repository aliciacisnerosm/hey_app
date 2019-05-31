require 'faker'

FactoryBot.define do
  factory :user do
    name {Faker::Name.unique.name}
    email {Faker::Internet.email}
    password_digest {Faker::Internet.password}
  end

end   
