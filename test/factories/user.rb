FactoryGirl.define do
  factory :user do
    first_name "John"
    last_name  "Doe"
    email { "#{first_name}.#{last_name}@example.com".downcase }
    password "johndoe123"
    confirmed_at Time.zone.now
  end
end