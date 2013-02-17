# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    password 'password'
    password_confirmation 'password'
    email { Faker::Internet.email }
  end

  factory :admin, :class=>User do
    password 'password'
    password_confirmation 'password'
    email 'admin@example.com'
  end  
end
