require 'securerandom'

FactoryGirl.define do
  factory :user do
    sequence(:id) { |n| n }

    name { Faker::Name.name }

    age { rand(20..40) }

    uuid { SecureRandom.uuid }

    code { rand(50...60).to_s }

    initialize_with { attributes }

    to_create { |u| Application['store.repositories.user'].call { create(u) } }
  end
end
