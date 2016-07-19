FactoryGirl.define do
  factory :user do
    email { Faker::Internet.email }
    password { Faker::Internet.password }
    role "patron"

    trait :owner do
      role "owner"
    end
  end

  factory :restaurant do
    name { Faker::Company.name }
    association :owner, factory: :user
  end
end
