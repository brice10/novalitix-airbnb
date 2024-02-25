# db/factories/user.rb
FactoryBot.define do
    factory :user do
        name { Faker::Internet.username }
        email { Faker::Internet.safe_email }
        password { 'password' }
    end
end