require 'faker'

FactoryBot.define do
  factory :user do
    name {Faker::Name.unique.name}
    email {Faker::Internet.email}
    password_digest {Faker::Internet.password}
  end
end


FactoryBot.define do 
  factory :micropost do
    id {Faker::IDNumber.south_african_id_number}
    content {Faker::Lorem.sentence}
    user_id {Faker::IDNumber.valid}
  end
end

